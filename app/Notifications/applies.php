<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Auth;

class applies extends Notification
{
    use Queueable;

    protected $job;

   
    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($job)
    {
        $this->job = $job;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['database'];
    }

 
  
    public function toDatabase($notifiable)
    {
       

        return [
            'user'   => $notifiable,
            'sender' => Auth::user(),
            'data'   => $this->job,
            'msg'    => "is applied to your Job (".$this->job->name.")",
        ];

} 


    //      public function getCreatedAtAttribute($date)
    // {
    //     return  date("F d, Y", strtotime($date->created_at)) ;
    // }

    // public function getUpdatedAtAttribute($date)
    // {
    //     return $date->created_at->format('Y-m-d');
    // }








    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
