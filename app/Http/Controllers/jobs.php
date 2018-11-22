<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Job;
use App\Skills;
use App\Job_skills;
use App\user;
use App\country;
use App\country_link;
use App\Apply;
use App\Bookmark;
use App\Follow;
use App\Notifications\applies;
use Auth;

class jobs extends Controller
{    

    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }
 
    public function view($id) {

    	$job = Job::with(['user', 'skills'])->withCount(['bookmarks' => function ($query) {
          $query->where('status', 1); 
        }])->find($id);

      foreach ($job->skills as $skill) {
         $skill = $skill->name;
      }
      
      if (!empty($skill)) {
        $similars = Job::whereHas('Skills', function ($query) use ($skill) {
          $query->where('name', 'like', '%'.$skill.'%'); 
        })->get();
      }

      $apply    = Apply::where('user_id', Auth('api')->id())->where('job_id', $id)->first();
      $bookmark = Bookmark::where('user_id', Auth('api')->id())->where('job_id', $id)->first();
      $follow   = Follow::where('s_id', Auth('api')->id())->where('r_id', $job->user->id)->first();

    	return compact('job', 'similars', 'apply', 'bookmark','bookmarks', 'follow');

    }

    public function create() {
      $countries = Country::all();
      $skills    = Skills::all();
    	return compact('countries', 'skills');
    }

    public function process(Request $request) {

  
        $this->validate($request, [
               // 'name'         => 'required|min:4',
               // 'title'        => 'required|min:6',
               // 'description'  => 'required|min:20',
               // 'country'      => 'required',
               // 'address'      => 'required',
               // 'experience'   => 'required',
               // 'skills'       => 'required',
               // 'education'    => 'required',
               // 'company_name' => 'required',
               // 'about_company'=> 'required',
               // 'logo'         => 'required|file|image|mimes:jpeg,png,gif,webp,jpg|max:2048',
               // 'salary'       => 'required',
               // 'job_type'     => 'required',
        	]);

        $job = new Job;
        $job->name         = $request->name;
        $job->title        = $request->title;
        $job->description  = $request->description;
        $job->address      = $request->address;
        $job->experience   = $request->experience;
        $job->education    = $request->education;
        $job->country      = $request->country;
        $job->company_name = $request->company_name;
        $job->about_company= $request->about_company;
        $job->salary       = $request->salary;
        $job->job_type     = $request->job_type;
        $job->availability = $request->availability;
        $job->user_id      = Auth('api')->id();
              // picture
        if (!empty($request->file('logo'))) {
          $path = $request->file('logo')->store('public/jobs');
          $path = str_replace('public', '/storage', $path);
          $job->company_logo = $path;
        }
          $job->save();
       
              // save skills
        $data = [];
        $x = explode(',' , $request->skills);
        foreach($x as $skill){
          $data[] = [
            'skill_id' => $skill,
            'job_id' => $job->id,
          ];
        }
        job_skills::insert($data);

        return 'good';
    }

    public function search(Request $request, $name = null, $q = null) {
    // return $request->all();
    $countries = Country::get();
    switch ($name) {
      case null:
        $jobs = new Job; 
      case 'company':
        $jobs = Job::where('company_name', 'LIKE', '%'.$request->q.'%' );
        break;
      case 'skills':       
        $jobs = Job::whereHas('Skills', function ($query) use ($request) {
            $query->where('name', 'like', '%'.$request->q.'%');
        });
        break;  
      case 'job_type':
        $jobs = Job::where('job_type', 'LIKE', '%'.$request->q.'%' );
        break;
      case 'location':
        $jobs = Job::where('country', 'LIKE', '%'.$request->q.'%' );
        break; 
      case 'country':
        $country = $request->country;
        $jobs = Job::whereIn('country', $country );
      break; 
      case 'general':
        $jobs = Job::where('name', 'LIKE', '%'.$request->q.'%')
                ->orWhere('title', 'LIKE', '%'.$request->q.'%')
                ->orWhere('address', 'LIKE', '%'.$request->q.'%')
                ->orWhere('experience', 'LIKE', '%'.$request->q.'%')
                ->orWhere('company_name', 'LIKE', '%'.$request->q.'%')
                ->orWhere('job_type', 'LIKE', '%'.$request->q.'%')
                ->orWhere('country', 'LIKE', '%'.$request->q.'%')
                ;
      break; 
      case 'all':
        $country = $request->country;
        $experience = $request->experience;
        $jobs = new Job;
        if (!empty($country)) {
            $jobs = $jobs->whereIn('country', $country);
        }elseif (!empty($experience)) {
            $jobs =  $jobs->whereIn('experience', $experience);
        } 
      break;
    }

     $jobs = $jobs->orderBy('id', 'desc')->with(['skills', 'apply'])->paginate(20);
     $response = [
         'pagination' => [
             'current_page'=> $jobs->currentPage(),
             'per_page'    => $jobs->perPage(),
             'total'       => $jobs->total(),
             'last_page'   => $jobs->lastPage(),
             'from'        => $jobs->firstItem(),
             'to'          => $jobs->lastItem()
         ],

         'jobs'      => $jobs,
         'countries' => $countries

     ];
 
     return response()->json($response);

  }

  public function available($id){
    $job = Job::find($id);
    if ($job->availability === 1) {
       $job->availability = 0;
       $job->save();
       return 'available';   
    } else {
       $job->availability = 1;
       $job->save();
       return 'Unavailable';
    }
  }

  public function apply($id){
      $apply = new Apply;
      $apply->status  = 0;
      $apply->user_id = Auth('api')->id();
      $apply->job_id  = $id;
      
      // $job = Job::find($id);
      // $user_id = $job->user_id;
     
      // $user = User::find($user_id);
      // $user->notify(new applies($job));
      $apply->save();

      return 'You Applied Successfuly.';
  }

           // Apply and Refuse Job
    public function apply_status(Request $request, $id, $job_id ,$user_id) {
      $app   =  new Apply;
      $apply =  $app->find($id);  
      $apply->user_id = $request->user_id;
      $apply->job_id  = $request->job_id;
      if ($apply->status == 1) {
        $apply->status  = 0;
      } else {
        $apply->status  = 1;           
      }
      $apply->save();
      return 'good';
    }

    public function bookmark($job_id, $book_id = null){
      $bookmark = new Bookmark;
      if ($book_id == null) {
          $bookmark->status  = 1;
          $bookmark->user_id = Auth('api')->id();
          $bookmark->job_id  = $job_id;
          $bookmark->save();
          return 'added';
        
      } else {
          Bookmark::find($book_id)->delete(); 
          return 'deleted'; 
      }
    }

}
