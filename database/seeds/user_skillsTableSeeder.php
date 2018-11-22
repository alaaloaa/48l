<?php

use Illuminate\Database\Seeder;

class user_skillsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
   public function run()
    {
    	for ($i=0; $i < 200; $i++) { 
	         DB::table('user_skills')->insert([
	             'skill_id' => rand(1,50),
	             'user_id' => rand(1,20),
	          ]);  
	     }    
    }
}
