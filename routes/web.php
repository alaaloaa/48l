<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/* Vue Routes */

Route::get('/', function () {
  return view('layouts.app');
});




// Route::get('/', function () {
//     return redirect('home');
// });

// Home PAge
// Route::get('/home', function () {
//     return view('home');
// })->name('home');

// Log Out
Route::get('/logout', function () {
    Auth::logout();
    return redirect('/login');
})->name('logout');

/* user data */
// Route::group(function () {
//     Route::get('/api/userData', 'users@userData');
// })->middleware('auth:api');    
Route::get('/api/userData', function() {
    return Auth('api')->user();
})->middleware('auth:api');


// jobs
Route::prefix('api/job/')->group(function () {
    Route::get('create', 'jobs@create');
    Route::post('process', 'jobs@process')->name('job/process');
	Route::get('view/{id}', 'jobs@view')->name('job/view');
    Route::get('search/{name?}/{q?}', 'jobs@search')->name('job/search');
    Route::get('availability/{id}', 'jobs@available')->name('job/available');
    Route::get('unavailable/{id}', 'jobs@unavailable')->name('job/unavailable');

    // Apply, Accept And Refuse Apply 
    Route::get('apply/{id}', 'jobs@apply')->name('job/apply');
    Route::get('apply_status/{id?}/{job_id?}/{user_id?}', 'jobs@apply_status')->name('apply_status');
    // Bookmark, Accept And Refuse Bookmark 
    Route::get('bookmark/{job_id}/{book_id?}', 'jobs@bookmark')->name('job/bookmark');
    //Route::get('bookmark_status/{id}/{job_id?}/{user_id?}', 'jobs@bookmark_status')->name('bookmark_status');
});

// profile
Route::prefix('api/profile/')->group(function () {
    Route::get('view/jobs', 'profile@view_jobs')->name('profile/view/jobs');
    Route::get('view/{id?}', 'profile@view')->name('profile/view');
    Route::get('view/applyments/{id?}', 'profile@applyments')->name('profile/view/applyments');
    Route::post('process', 'profile@process')->name('profile/process');
    Route::get('edit', 'profile@edit')->name('profile/edit');
    Route::post('update', 'profile@update')->name('profile/update');
    Route::post('updatepic/{id}', 'profile@updatepic')->name('profile/updatepic');
    Route::get('changepassword', 'profile@changepasswordview')->name('profile/changepasswordview');
    Route::post('changepasswordprocess', 'profile@changepasswordprocess')->name('profile/changepasswordprocess');
});


// user
Route::prefix('api/user/')->group(function () {
    Route::get('follow/{r_id}/{follow_id?}', 'users@follow')->name('user/follow');
    Route::get('follow_status/{follow_id}/{r_id?}/{remove?}', 'users@follow_status')->name('user/follow_status');
});

// user
Route::prefix('api/messages/')->group(function () {
      Route::get('view/{id}', 'messages@view')->name('messages/view');
      Route::post('send/{r_id}', 'messages@send')->name('messages/send');
});


//mark all as read 
Route::get('markall', function () {
    Auth::user()->Notifications->markAsRead();
    return redirect()->back();
})->name('markAllread');


    Route::get('test', function () {
        return App\Job::withCount(['apply'])->get();
        return App\Job::with('apply')->find(105);
    });


Auth::routes();



Route::get('{any}', function ($any) {
  return view('layouts.app');
})->where('any', '.*');
