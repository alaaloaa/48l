<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Hash;
use App\job;
use App\User;
use App\skills;
use App\Country;
use App\country_link;
use App\Apply;
use App\User_skills;
use Auth;

class profile extends Controller
{


    public function __construct()
    {
        // $this->middleware('auth');
        // $user_skills = User::with('skills')->find(Auth::id());
        // foreach ($user_skills->skills as $user_skills) {
        //    $user_skills = $user->skills->name;
        // }
    }

    public function view($id) {
       $user  = user::find($id);
       return $user;
    } 
   
    public function view_jobs() {

       $jobs  = Job::withCount('apply')->with('user')->where('user_id', Auth('api')->id())->get();
       return $jobs;
    } 

    public function edit() {
       $user           = User::with('skills')->find(Auth('api')->id());
       $countries      = Country::all();
       $skills         = skills::all();
       return compact('user', 'countries', 'skills');
    } 

    public function update(Request $request) {
      // return $request;
        // $this->validate($request, [
        //       'first_name' => 'required|max:255',
        //       'last_name'  => 'required|max:255',
        //       'email'      => ['required',Rule::unique('users')->ignore($request->id) ],
        //       'phone'      => 'required|numeric',
        //   ]);
  // return $request;
      // picture
        $user = User::find(Auth('api')->id());
        $user->first_name = $request->first_name;
        $user->last_name  = $request->last_name;
        $user->email      = $request->email;
        $user->phone      = $request->phone;
        $user->about      = $request->about;
        $user->gender     = $request->gender;
        $user->job        = $request->job;
        $user->country    = $request->country;
        // $user->save();
               // save skills
        if (!empty($request->skills)) {
            $data = [];
            foreach($request->skills as $skill){
              $data[] = [
                'skill_id' => $skill,
                'user_id'  => Auth('api')->id(),
              ];
            }
            user_skills::insert($data);
        }


      // picture
        if (!empty($request->file('avatar'))) {
           $path = $request->file('avatar')->store('/public/users');
           $path = str_replace('public', '/storage', $path);
           $user->avatar = $path;
        }
       
        if (Hash::check($request->confirm_password, Auth('api')->user()->password)) {
            $user->save();
            return 'User <b>Updated</b> Successfuly';
         } else {
            return 'Check Your Password Again!';
         }               
    }

     public function updatepic(Request $request, $id) {
        $this->validate($request, [
              'avatar'     => 'required|file|image|mimes:jpeg,png,gif,webp,jpg|max:2048',
          ]);

      // picture
        $user = User::find(Auth('api')->id());
        $path = $request->file('avatar')->store('public/users');
        $path = str_replace('public', '/storage', $path);
        $user->avatar = $path;
        
        $user->save();
        return redirect()->back()->with('msg', 'Picture <b>Updated</b> Successfuly');       
    }

    public function changepasswordview() {
        return view('profile.change_password');
    }

    public function changePasswordProcess(Request $request) {
        $this->validate($request, [
              'password'      => 'required',
              'newpassword'      => 'required',
              'confirm_password' => 'same:newpassword',
          ]);
        $user = User::find(Auth::id());
        $user->password = bcrypt($request->newpassword);

        if (Hash::check($request->password, Auth::user()->password)) {
            $user->save();
            session()->flash('msg', 'Password Changed Successfuly');
         } else {
            session()->flash('pass', 'Current password is wrong');
         }      

        return redirect()->back()->with('msg', 'Password Changed Successfuly');
    }

    public function applyments($id) {

       // $job   = Job::with('apply')->with('user')->where('id', $id)->first();

       $apply = Apply::with('user')->with('job')->where('job_id', $id)->get();
       return $apply;
    }


   

}
