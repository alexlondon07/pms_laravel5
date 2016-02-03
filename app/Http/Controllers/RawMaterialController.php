<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use View;
use App\RawMaterial;
use App\Http\Requests\CreateRawMaterialRequest;
use Illuminate\Support\Facades\Redirect;


class RawMaterialController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$items = RawMaterial::paginate();
		$items->setPath('raw_material');
		return View::make('admin.raw_material.view_raw_material', compact('items'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$raw_material = new RawMaterial;
		$show = false;
		return View::make('admin.raw_material.new_raw_material', compact('raw_material', 'show'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(CreateRawMaterialRequest $request)
	{
		$raw_material = RawMaterial::create($request->all());
		return Redirect::to('admin/raw_material')->with('success_message', 'Registro guardado!');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$raw_material = RawMaterial::findOrFail($id);
		$show = true;
		return View::make('admin.raw_material.new_raw_material', compact('raw_material', 'show'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$raw_material = RawMaterial::findOrFail($id);
		$show = false;
		return View::make('admin.raw_material.new_raw_material', compact('raw_material', 'show'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(CreateRawMaterialRequest $request, $id)
	{
		$raw_material = RawMaterial::findOrFail($id);
		$raw_material->fill($request->all());
		$raw_material->save();
		return Redirect::to('admin/raw_material')->with('success_message', 'Registro actualizado!');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$raw_material = RawMaterial::findOrFail($id);
		$raw_material->delete();
		return Redirect::to('admin/raw_material')->with('success_message', 'El registro ha sido borrado.')->withInput();
	}

}
