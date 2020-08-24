@extends('frontEnd.master')

@section('title')
	Change Password
@endsection

@section('body')

	<div class="content">

		<div class="single-wl3">

			<div class="container">
				
				<div class="row">
					<div class="col-md-6 col-md-offset-3  well">	
						<h4 class="text-center">Change Password</h4>

						@if(Session::get('success'))
							<div id="msg" class="alert alert-success left-icon-alert" role="alert">
				                <strong>Well done! &nbsp;</strong>{{ Session::get('success') }}
				            </div>
				            @elseif(Session::get('error'))
				            <div id="msg" class="alert alert-danger left-icon-alert" role="alert">
				                <strong>Opps! &nbsp;</strong>{{ Session::get('error') }}
				            </div>
			            @endif

						@if(count($errors) > 0)
			                <div class="alert alert-danger">
			                    @foreach($errors->all() as $error)
			                        <p>{{ $error }}</p>
			                    @endforeach
			                    <p>{{ session('message') }}</p>
			                </div>
			            @endif
						<hr/>
						<hr/>	
						<form class="form-horizontal" action="{{ route('update_password') }}" method="POST">
							@csrf

						    <div class="form-group">
							    <label class="control-label col-sm-4" for="password">Old Password:</label>
							    <div class="col-sm-8">
							    	<input type="password" class="form-control" name="old_password" id="old_password" placeholder="Enter Old Password" required />
							    </div>
							</div>

						    <div class="form-group">
							    <label class="control-label col-sm-4" for="new_password">New Password:</label>
							    <div class="col-sm-8">
							    	<input type="password" class="form-control" name="new_password" id="new_password" placeholder="Enter New Password" required autocomplete="new-password" />
							    </div>
							</div>


						    <div class="form-group">
							    <label class="control-label col-sm-4" for="password_confirmation">Confirm Password:</label>
							    <div class="col-sm-8">
							    	<input type="password" class="form-control" name="password_confirm" id="password_confirm" placeholder="Enter Confirm New Password" required />
							    </div>
							</div>


						  <div class="form-group">
						    <div class="col-sm-12">
						      <button type="submit" class="btn btn-success btn-block">Change</button>
						    </div>
						  </div>
						</form>
					</div>				

				</div>	
			</div>
		</div>
	</div>

@endsection