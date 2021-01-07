<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\AffiliateSetting;
use Session;

class AffiliateRegistrationController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $affiliation = User::where('type', 'affiliate')->orderBy('id','desc')->get();
        $counter = 0;
        return view('admin.affiliate.index', compact('affiliation', 'counter'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.affiliate.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate( $request, [

			'username'          => 'required',
            'email'             => 'required',
            'terms'             => 'required',
            'password'          => 'required|min:8',
            'confirm_password'  => 'required_with:password|same:password|min:8',

        ] );

        $affiliation                    = new User();
        $affiliation->name              = $request->username;
        $affiliation->email             = $request->email;
        $affiliation->new_affiliate_id  = uniqid();
        $affiliation->password          = \Hash::make( $request->password );;
        $affiliation->type              = 'affiliate';

        $affiliation->save();
        Session::flash('success', 'Affiliation Created successfully!');
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $affiliation = User::find($id);
        return view('admin.affiliate.edit', compact('affiliation'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request , $id)
    {
        $this->validate( $request, [
			'username'          => 'required',
            'email'             => 'required',
            'password'          => 'required|min:8',
            'confirm_password'  => 'required_with:password|same:password|min:8',
        ] );

        $affiliation            = User::find($id);
        $affiliation->name      = $request->username;
        $affiliation->email     = $request->email;
        // $affiliation->terms     = $request->terms;
        $affiliation->password  = ( null === $request->password ) ? $user->password : \Hash::make( $request->password );
        $affiliation->type      = 'affiliate';
        $affiliation->save();

        Session::flash('success', 'Affiliation Updated successfully!');
        return redirect()->route('admin-affiliation-index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $affiliation = User::find($id);
        $affiliation->delete();
        Session::flash('success', 'Affiliation Deleted successfully!');
        return redirect()->back();

    }


    public function setting()
    {
        $settings = AffiliateSetting::where( 'user_id', auth()->id() )->first();

        if(!$settings)

            $settings   = new  AffiliateSetting;

		return view( 'admin.affiliate.setting', compact( 'settings' ) );

    }

    public function settingUpdate()
    {
        $this->validate( $request, [

			'commision'       => 'required',

        ] );

        $settings = AffiliateSetting::where('user_id', auth()->id() )->first();

        if (!$settings)

            $settings   = new  AffiliateSetting;

		$settings->user_id  = auth()->Id();
		$settings->commision      = $request->commision;
		$settings->save();

		Session::flash('success', 'Affiliation Setting Updated successfully!');
		// redirect back
		return redirect()->back();

    }
}