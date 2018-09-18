<?php

use Illuminate\Database\Seeder;
use App\Product;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Product::create([
           'name' => 'Raw Honey',
           'slug'=> 'Raw Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => 'Sweet Honey',
           'slug'=> 'Sweet Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => 'Chilly Honey',
           'slug'=> 'Chilly Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => 'road Honey',
           'slug'=> 'road Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => 'Honey',
           'slug'=> 'Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => 'ca Honey',
           'slug'=> 'ca Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => '2 Honey',
           'slug'=> '2 Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => '1 Honey',
           'slug'=> '1 Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => 'voi Honey',
           'slug'=> 'voi Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => 'kamba Honey',
           'slug'=> 'kamba Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => 'kambu Honey',
           'slug'=> 'kambu Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => 'lemmon Honey',
           'slug'=> 'lemmon Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => 'cinnamon Honey',
           'slug'=> 'cinnamon Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

        Product::create([
           'name' => 'Mommy Honey',
           'slug'=> 'Mommy Honey',
           'details'=>'500 grams',
           'price' =>450,
           'description' => 'Raw honey from the woods of Kisii',
        ]);

    }
}
