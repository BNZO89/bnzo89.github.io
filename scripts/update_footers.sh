#!/bin/bash

# Directory containing HTML files
DIR="/home/paulgrey/Templates/electricitedj"

# Use a temporary delimiter to mark the start and end of the footer
start_footer="<footer class=\"site-footer\">"
end_footer="</footer>"

# Define the new footer content (no need to escape special characters)
new_footer='<footer class="site-footer">
		<div class="grid-container">
		    <div class="grid-x">
		        <div class="cell large-2">
					<img src="wp-content/uploads/2019/08/footer.png" alt="Logo" class="logo">
		        </div>
		        <div class="cell large-auto show-for-medium">
		            <nav>
		                <ul>
		                    <li>
		                    	<a href="index.html">Home</a>
		                    </li>
		                    	                        <li>
			                    	<a href="index.html%3Fp=11.html">Projects</a>
			                    </li>
		                    						                        	                        <li>
			                    	<a href="index.html%3Fp=9.html">Services</a>
			                    </li>
		                    						                    </ul>
		                <ul>
		                    	                        <li>
			                    	<a href="index.html%3Fp=7.html">About</a>
			                    </li>
		                    												<!--
							<li>
		                    	<a href="/news/">News</a>
		                    </li>
		                    -->
									                    <li>
			                    	<a href="index.html%3Fp=15.html">Contact</a>
			                    </li>
		                    												
		                </ul>
		                <ul class="secondary">
		                    	                        <li>
			                    	<a href="index.html%3Fp=48.html">Terms</a>
			                    </li>
		                    													                        <li>
			                    	<a href="index.html%3Fp=19.html">Privacy</a>
			                    </li>
		                    						                    </ul>
		            </nav>
		        </div>
		        	            <div class="cell medium-shrink text-center">
			            <a class="btn btn-stroke btn-white" href="index.html%3Fp=15.html">
			                <span>Start a project</span>
			            </a>
			        </div>
		        			        </div>
		    <div class="grid-x align-middle footer-bottom">
		        <div class="cell show-for-large large-2"></div>
		        <div class="cell medium-auto">
		            <ul class="text-white text-sm copyright">
		                <li>&copy; 2024 Electricite DJ. Inc.</li>
		                <li>Design & Build by <a href="https://www.somecrazypsycopath.com/" target="_blank">Some Crazy Psycopath</a></li>
		            </ul>
		        </div>
		        	            <div class="cell medium-shrink">
			            <ul class="social">
				            	                    	<li>
			                		<a href="https://www.linkedin.com/company/electricitedj/about/" target="_blank">
				                		<i class="fab fa-linkedin"></i>
				                		<!--facebook-square-->
				                	</a>
				                </li>
									            </ul>
			        </div>
		                </div>
		</div>
	</footer>'

# Loop through all HTML files in the directory
for file in "$DIR"/*.html; do
    # Use sed to remove the lines between the old footer start and end
    sed -i "/$start_footer/,/$end_footer/{/$start_footer/{p;};/$end_footer/!d;}" "$file"
    
    # Insert the new footer after the deleted old footer
    sed -i "/$start_footer/r /dev/stdin" <<< "$new_footer" "$file"
done

echo "Footer replaced in all HTML files."

