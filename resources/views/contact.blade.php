@extends('layouts.master')

@section('title', '$[G-P\'s]$ Technologies Limited &reg; | Home')

@section('content')
<div class="single_top">
	 <div class="container"> 
	  <div class="map">
	     <!--iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3150859.767904157!2d-96.62081048651531!3d39.536794757966845!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1408111832978"> </iframe-->
		 @include('includes.map');
	   </div>
	   <div class="col-md-9 contact_left">
		 	  <h1>Get in Touch</h1>
	  			  <p>We will get back to you as soon as possible</p>
	  			 <form>
					<div class="column_2">
                     	<input type="text" class="text"  placeholder="" value="Name" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Name';}">
					 	<input type="text" class="text"  placeholder="" value="Email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}" style="margin-left:2.7%">
					 	<input type="text" class="text"  placeholder="" value="Subject" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Subject';}" style="margin-left:2.7%">
					</div>
					<div class="column_3">
	                   <textarea value="Message"  placeholder="" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
	                </div>
	                <div class="form-submit1">
			          <input type="submit" value="Send Message">
					</div>
					<div class="clearfix"> </div>
				  </form>
		 </div>
		 <div class="col-md-3 contact_right">
		 	<h2>Information</h2>
		 	<address class="address">
              <p>
			  	 39 Molynes Road,
			  	 <br/>
				 Kingston 10,
				 <br/>
				 Jamaica W.I
			  </p>
              <dl>
                 <dt></dt>
                 <dd>Office phone:<span> +1 876 470 9642</span></dd>
                 <dd>Telephone:<span> +1 876 384 3328</span></dd>
                 <dd>E-mail:&nbsp; <a href="GP_Tech@outlook.com">GP_Tech@outlook.com</a></dd>
              </dl>
           </address>
		 </div>
      </div>
</div>
@endsection