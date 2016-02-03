<?php

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder {

	public function run() {
		DB::table('users')->delete();
		DB::table('raw_materials')->delete();
		DB::table('products')->delete();


		\DB::table('users')->insert(array (
			'profile' => 'super_admin',
			'name' => 'Alexander Londono',
			'email' => 'admin@admin.com',
			'enable' => 'si',
			'password' => \Hash::make('admin')
			));

		$faker = Faker\Factory::create();
    $count = 50;
    foreach (range(1, $count) as $index) {

		//Seeder de Usuarios
		\DB::table('users')->insert(array (
			'profile' => 'usuario',
			'name' => $faker->lastName,
			'email' => $faker->email,
			'enable' => 'si',
			'password' => \Hash::make('12345')
			));

		//Seeder Materias Primas
		\DB::table('raw_materials')->insert(array (
			'name' => $faker->name,
			'reference' => $faker->name,
			'description' => $faker->text,
			'enable' => 'si'
			));

		//Seeder Actividades
		\DB::table('activities')->insert(array (
			'name' => $faker->name,
			'reference' => $faker->name,
			'description' => $faker->text,
			'tolerance' => $faker->name,
			'acceptance_requirements' => $faker->name,
			'enable' => 'si'
			));

			//Seeder de productos
			\DB::table('products')->insert(array (
				'name' => $faker->name,
				'reference' => $faker->postcode,
				'description' => $faker->text,
				'inspection_points' => 'ninguno',
				'inspection' => 'si',
				'inspection' => 'si',
				'enable' => 'si'
				));
		}
	}
}
