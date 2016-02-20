<?php

class ExampleTest extends TestCase {

	/**
	 * A basic functional test example.
	 *
	 * @return void
	 */
	public function testBasicExample(){
		//$response = $this->call('GET', '/');

		//$this->assertEquals(200, $response->getStatusCode());

		//$response = $this->action('GET', 'HomeController@index');
		 $this->call('GET', 'user');
	}



	// function welcome(){
  //   if (auth()->check()) {
  //       return 'Welcome ' . auth()->user()->name . '!';
  //   }
  //   return 'Welcome guest!';
	// }

}
