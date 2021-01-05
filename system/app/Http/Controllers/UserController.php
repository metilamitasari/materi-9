<?php 


namespace App\Http\Controllers;
use App\Models\User;
use App\Models\userdetail;

/**
 * 
 */
class UserController extends Controller
{
	
	function index()
	{
		$data['list_user'] = User::withCount('produk')->get();
		return view('pengguna/index', $data);
	}
	
	function create()
	{
		return view('pengguna/create');
	}
	
	function store()
	{
		$user = new User;
		$user->nama = request('nama');
		$user->username = request('username');
		$user->email = request('email');
		$user->password = request('password');
		$user->jenis_kelamin = 1;
		$user->save();


		$userdetail = new userdetail;
		$userdetail->id_user = $user->id;
		$userdetail->no_handphone = request('no_handphone');
		$userdetail->save();

		return redirect('user')->with('success', 'Data Berhasil di Tambahkan');
	}
	
	function show(User $user)
	{
		$data['user'] = $user;
		return view('pengguna/show', $data);
	}
	
	function edit(User $user)
	{
		$data['user'] = $user;
		return view('pengguna/edit', $data);
		
	}
	
	function update(User $user)
	{
		$user->nama = request('nama');
		$user->username = request('username');
		$user->email = request('email');
		if(request('password')) $user->password = bcrypt(request('password'));
		$user->save();

		return redirect('user')->with('success', 'Data Berhasil di Update');
	}
	
	function destroy(User $user)
	{
		$user->delete();

		return redirect('user')->with('danger', 'Data Berhasil di Hapus');
	}
}