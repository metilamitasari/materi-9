@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Detail Data Produk
				</div>
				<div class="card-body">
					<table class="table">
						<tbody>
							<h3>{{$produk->nama_produk}}</h3>
							<hr>
							<p>
				<div class="card-body">
					<table class="table">
						<tbody>				
							<h4>{{($produk->harga)}} </h4>
							Stok : {{$produk->stok}} |
							Berat : {{$produk->berat}} gr |
							seller : {{$produk->seller->nama}}   |
							Tanggal Produk : {{$produk->created_at->format('d F Y')}}
							</p>
							<p>
								{!! nl2br($produk->deskripsi) !!}
							</p>
						</tbody>
					</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection