<?php

use Illuminate\Database\Seeder;

class job_skillsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	for ($i=0; $i < 200; $i++) { 
	         DB::table('job_skills')->insert([
	             'skill_id' => rand(1,40),
	             'job_id' => rand(1,40),
	          ]);  
	     }    
    }
}
