<?php

use Illuminate\Database\Seeder;

class jobsTableSeeder extends Seeder
{
    

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    { 
         $countries = array("Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegowina", "Botswana", "Bouvet Island", "Brazil", "British Indian Ocean Territory", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo", "Congo, the Democratic Republic of the", "Cook Islands", "Costa Rica", "Cote d'Ivoire", "Croatia (Hrvatska)", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Falkland Islands (Malvinas)", "Faroe Islands", "Fiji", "Finland", "France", "France Metropolitan", "French Guiana", "French Polynesia", "French Southern Territories", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard and Mc Donald Islands", "Holy See (Vatican City State)", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran (Islamic Republic of)", "Iraq", "Ireland", "Israel", "Italy", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, Democratic People's Republic of", "Korea, Republic of", "Kuwait", "Kyrgyzstan", "Lao, People's Democratic Republic", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libyan Arab Jamahiriya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia, The Former Yugoslav Republic of", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Federated States of", "Moldova, Republic of", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romania", "Russian Federation", "Rwanda", "Saint Kitts and Nevis", "Saint Lucia", "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Seychelles", "Sierra Leone", "Singapore", "Slovakia (Slovak Republic)", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia and the South Sandwich Islands", "Spain", "Sri Lanka", "St. Helena", "St. Pierre and Miquelon", "Sudan", "Suriname", "Svalbard and Jan Mayen Islands", "Swaziland", "Sweden", "Switzerland", "Syrian Arab Republic", "Taiwan, Province of China", "Tajikistan", "Tanzania, United Republic of", "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "United States Minor Outlying Islands", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "Virgin Islands (British)", "Virgin Islands (U.S.)", "Wallis and Futuna Islands", "Western Sahara", "Yemen", "Yugoslavia", "Zambia", "Zimbabwe");
         $key9    = array_rand($countries, 30);
         $company_name  = ['facebook', 'google', 'youtube', 'whatsapp', 'massenger', 'zabado', 'Bety'];
         $key6    = array_rand($company_name, 7);
         $about_company = ["Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.", "To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work", "work on improving the family relationship, work on the employee's whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it."
         ];
         $key7    = array_rand($about_company, 3);
         $gender = ['male', 'female'];
         $key    = array_rand($gender, 2);
         $description = [ "2+ years of 'experience'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification", "jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35"
            ];
            $key1      = array_rand($description, 2);
            $address   = ["Media Misr - Cairo, Egypt","Mohandessin, Giza","Maadi, Cairo","Glim, Alexandria"];
            $key3      = array_rand($address, 4);
            $education = ['computer science- Auc', 'faculty of commrece', 'faculty of law'];
            $key4      = array_rand($education, 3);
            $job_type  = ['full_time', 'hours'];
            $key5      = array_rand($job_type, 2);
            $name      = ['PHP Developer', 'Web Developer', 'Full Stack Web Developer (PHP / Laravel)', 'PHP Web Developer', 'WordPress Web Developer - Alexandria'];
            $key10     = array_rand($name, 5);
            $title     = ['WordPress - Alexandria', 'PHP Developer', 'PHP Laravel Developer', 'Full Stack Web Developer (PHP / Laravel)', 'PHP Web Developer', 'WordPress Web Developer - Alexandria'];
            $key11     = array_rand($title, 6);

    	for ($i=0; $i < 50; $i++) { 
    		DB::table('jobs')->insert([          
            'name'         => $name[$key11[rand(0, 3)]],
            'title'        => $title[$key11[rand(0, 5)]],
            'description'  => $description[$key1[rand(0, 1)]],
            'address'      => $address[$key3[rand(0, 3)]],
            'country'      => $countries[$key9[rand(0, 28)]],
            'experience'   => rand(1,5).'-'.rand(5,10),
            'company_name' => $company_name[$key6[rand(0, 1)]],
            'about_company'=> $about_company[$key7[rand(0, 2)]],
            'education'    => $education[$key4[rand(0, 2)]],
            'company_logo' => '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png',
            'job_type'     => $job_type[$key5[rand(0, 1)]],
            'salary'       => rand(20, 150),
            'availability' => 0,
            'approve'      => 0,
            'user_id'      => rand(1,20),
          ]);
            
    	}
        
    }

    
}

?>
<?php
/*
use Illuminate\Database\Seeder;

class jobsTableSeeder extends Seeder {
    
    public $jobs = [
  [
    'name'         => "PHP Developer",
    'title'        => "PHP Web Developer",
    'description'  => "2+ years of 'experience'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification<br>Strong knowledge of PHP frameworks ( Laravel is must )<br>Good knowledge of front-end technologies, such as JavaScript, jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35",
    'location'     => "Egypt",
    'address'      => "Media Misr - Cairo, Egypt",
    'experience'   => 2,
    'company_name' => "Nile Multimedia",
    'about_company'=> "Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.",
    'company_logo' => "images/Nile-Multimedia-Egypt-4085-sm.png",
    'job_type'     => "Full Time",
    'salary'       => 5000,
    'user_id'      => 1,
    'approved'     => 0,
    'availability' => 0,
  ],[
    'name'         => "Web Developer",
    'title'        => "PHP Laravel Developer",
    'description'  => "Design, build, and deploy efficient, testable and reusable PHP applications and modules according to specifications<br>Troubleshoot and maintain new and existing applications and databases<br>Building the backed DB design and APIs<br>Contribute in all phases of the development lifecycle.<br>Write technical documents for projects",
    'location'     => "Egypt",
    'address'      => "Mohandessin, Giza",
    'experience'   => 1,
    'company_name' => "PPLMX",
    'about_company'=> "To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work, work on improving the family relationship, work on the employee's whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.",
    'company_logo' => "images/PPLMX-Egypt-20044-1475157676-sm.PNG",
    'job_type'     => "Full Time",
    'salary'       => 3000,
    'user_id'      => 1,
    'approved'     => 0,
    'availability' => 0,
  ],[
    'name'         => "Full Stack Web Developer (PHP / Laravel)",
    'title'        => "PHP Laravel Developer",
    'description'  => "More than 2 year 'experience' with PHP/Laravel framework and using Eloquent.<br>Ability to hand-code HTML and CSS.<br>Good understanding of database design basics and MySQL querying.<br>Solid 'experience' with Javascript and one or more JS frameworks.<br>Experience with API design, AJAX-style asynchronous loading and statistical and graphical visualization.<br>Experienced in building and/or consuming web services/APIs.<br>Ability to create and use new libraries.<br>Familiarity with Linux OS and passion for open source technologies",
    'location'     => "Egypt",
    'address'      => "Maadi, Cairo",
    'experience'   => 3,
    'company_name' => "Ebtikar IT",
    'about_company'=> "Ebtikar IT is a multinational company which owns the trademarks of Ebtikar, EbtikarSMS, EbtikarConsulting, EbtikarHost and EbtikarCloud is the biggest web hosting and clouding provider in the MEA region. <br>As a top-notch Production software and Internet services company, Ebtikar IT offers a wide range of solutions to a rapidly increasing valuable clients in the MEA region, Our service portfolio includes => Production accounting and administrative software and analysis of electronic systems & web hosting, hosted applications, cloud computing services, E-governance, E-learning, audio/video streaming, hosted CRM ,VOIP & call center solutions and provides 24/7 round the clock support .",
    'company_logo' => "images/Ebtikar-IT-Egypt-18198-1487497180-sm.png",
    'job_type'     => "Full Time",
    'salary'       => 5000,
    'user_id'      => 1,
    'approved'     => 0,
    'availability' => 0,
  ],[
    'name'         => "PHP Web Developer",
    'title'        => "PHP Developer",
    'description'  => "2+ years of 'experience'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification<br>Strong knowledge of PHP frameworks ( Laravel is must )<br>Good knowledge of front-end technologies, such as JavaScript, jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35<br>Working from company not home",
    'location'     => "Egypt",
    'address'      => "Nasr City, Cairo",
    'experience'   => 3,
    'company_name' => "360 Codes",
    'about_company'=> "360Code is a promising and emerging company in the software, Programming services providers and Web design and Web development industry that includes a team of professional and expert web developers and graphic designers",
    'company_logo' => "images/360-codes-Egypt-24815-1495554292-sm.png",
    'job_type'     => "Full Time",
    'salary'       => 6000,
    'user_id'      => 1,
    'approved'     => 0,
    'availability' => 0,
  ],[
    'name'         => "WordPress Web Developer - Alexandria",
    'title'        => "WordPress - Alexandria",
    'description'  => "Solid knowledge of PHP<br>WordPress theme & plugin development/customization<br>Experience with WooCommerce and its integration with the APIs of payment gateways and shipping companies<br>Solid understanding of WordPress’s template hierarchy and security best practices<br>Front-end development 'skills' like HTML5, CSS3, JavaScript, jQuery, Bootstrap, etc.<br>Previous 'experience' with LAMP development environment and Git version control",
    'location'     => "Egypt",
    'address'      => "Glim, Alexandria",
    'experience'   => 3,
    'company_name' => "Qowwa Inc.",
    'about_company'=> "Qowwa's main focus is to empower local businesses that move the Egyptian community forward by providing them with custom web, mobile, and e-commerce application development.Qowwa’s second focus is to provide website design, development, and management services to local and international clients.",
    'company_logo' => "images/Qowwa-Inc--Egypt-22246-1485703575-sm.png",
    'job_type'     => "Full Time",
    'salary'       => 7000,
    'user_id'      => 1,
    'approved'     => 0,
    'availability' => 0,
  ]
];

    /**
     * Run the database seeds.
     *
     * @return void
     */
   /* public function run()
    {
   
      foreach ($this->jobs as $job) {
         DB::table('jobs')->insert([
            'name'         => $job->name,
            'title'        => $job->title,
            'description'  => $job->description,
            'location'     => $job->location,
            'address'      => $job->address,
            'experience'   => $job->experience,
            'company_name' => $job->company_name,
            'about_company'=> $job->about_company,
            'company_logo' => $job->company_logo,
            'job_type'     => $job->job_type,
            'salary'       => $job->salary,
            'user_id'      => $job->user_id,
            'approved'     => $job->approved,
            'availability' => $job->availability,
          ]);  
      }
    }

}
*/
