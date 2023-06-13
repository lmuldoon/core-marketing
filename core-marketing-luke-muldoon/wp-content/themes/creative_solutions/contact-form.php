<div id="parallax" style="background-image:url(<?php echo get_field('parallax_image'); ?>);"></div>
<section id="contact" class="darkBg">
        <div class="container">
            <div class="d-flex justify-content-between align-items-start">
                <h2 class="headerScale"><?php echo get_field('contact_title'); ?></h2>
            </div>
            <div class="row">
                <div class="col-md-5 col-12">
                    <p><?php echo get_field('contact_text_line_1'); ?></p>
                    <p><?php echo get_field('contact_text_line_2'); ?></p>
                </div>
                <div class="col-md-6 offset-md-1 offset-0 col-12">
                    <form id="contactForm" method="post">
                        <div class="row">
                            <div class="col-6">
                                <div class="mb-3">
                                    <label for="floatingInputName">First name</label>
                                    <input name="firstname" type="firstname" class="form-control" id="floatingInputName" placeholder="First Name" required>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="mb-3">
                                    <label for="floatingInputName">Last name</label>
                                    <input name="lastname" type="lastname" class="form-control" id="floatingInputName" placeholder="Last Name" required>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="floatingInput">Subject</label>
                            <input name="subject" type="text" class="form-control" id="floatingInput" placeholder="Subject" required>
                        </div>
                        <div class="mb-3">
                            <label for="floatingTextarea2">Message</label>
                            <textarea name="message" class="form-control" placeholder="Your message" id="floatingTextarea2" style="height: 100px" required></textarea>
                        </div>
                        <div class="d-flex justify-content-end">
                            <button class="btn btn-primary" id="contactSubmit" name="contactSubmit">Submit
                                <svg class="btnArrow" xmlns="http://www.w3.org/2000/svg" width="39.336" height="39.336" viewBox="0 0 39.336 39.336">
                                    <path class="arrow" data-name="Path 1463" d="M19.668,0A19.668,19.668,0,1,0,39.336,19.668,19.668,19.668,0,0,0,19.668,0ZM15.722,13.78a1.788,1.788,0,1,1,2.528-2.528L25.4,18.4a1.788,1.788,0,0,1,0,2.528L18.25,28.084a1.788,1.788,0,1,1-2.528-2.528l5.888-5.888Z" fill-rule="evenodd"/>
                                </svg>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>