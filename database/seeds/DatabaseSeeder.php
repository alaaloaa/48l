<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */

    public function run() {
        $this->call(usersTableSeeder::class);
        $this->call(jobsTableSeeder::class);
        $this->call(CountriesTableSeeder::class);
        $this->call(skillsTableSeeder::class);
        $this->call(job_skillsTableSeeder::class);
        $this->call(user_skillsTableSeeder::class);
        //factory(App\User::class, 10)->create();
    }
    
}
