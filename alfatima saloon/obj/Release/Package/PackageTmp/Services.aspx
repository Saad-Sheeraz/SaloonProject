<%@ Page Title="" Language="C#" MasterPageFile="~/outmasterpage.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="al_fatima_saloon.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <header class="masthead">
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">Welcome To Al-Fatenah Saloon!</div>


                <%--<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger">  </a>--%>
            </div>
        </div>
    </header>


    <!-- Portfolio Grid -->
    <section class="bg-light" id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading text-uppercase">Here Are Our Services</h2>

                </div>
            </div>

            <div class="row">



                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/haircutting.jpg" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Hair Cuttings</h4>
                        <p class="text-muted">All types included</p>
                    </div>
                </div>


                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/hairdye.jpg" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Hair Dye</h4>
                        <p class="text-muted">Every Style Included</p>
                    </div>
                </div>


                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/hairtreat.jpg" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Hair Treatment</h4>
                        <p class="text-muted">All Type Of Treatments </p>
                    </div>
                </div>



                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/facial.jpg" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Facial Services</h4>
                        <p class="text-muted">All Categories Of Facial</p>
                    </div>
                </div>



                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/face hair removal.jpg" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>FaceHair Removal</h4>
                        <p class="text-muted">Includs All Types</p>
                    </div>
                </div>



                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/fbleech.jpg" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Face Bleech</h4>
                        <p class="text-muted">All Categories</p>
                    </div>
                </div>


                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal7">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/bbleech.jpg" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Body Bleech</h4>
                        <p class="text-muted">All Categories</p>
                    </div>
                </div>


                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal8">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/bhrr.jpg" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Body Hair Removal</h4>
                        <p class="text-muted">All Categories</p>
                    </div>
                </div>


                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal9">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/hena.jpg" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Henna Services</h4>
                        <p class="text-muted">All Categories</p>
                    </div>
                </div>



                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal10">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/nail.jpg" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Nail Care Services</h4>
                        <p class="text-muted">All Categories</p>
                    </div>
                </div>

            </div>
        </div>








    </section>


    <%-- model--%>

    <!-- Modal 1 -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>


                <%-- part1--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Hair Style</h2>

                                <p class="item-intro text-muted"></p>
                                <img class="img-fluid d-block mx-auto" src="img/portfolio/haircut-alpha.jpg" alt="">
                                <p>
                                    Haircutting takes an incredibly long time to master and requires constant education! In the Ultimate Video Guide to the Best Haircutting Techniques, we have hand-selected many of our favorite videos that we believe will elevate your haircutting skillset to another level.

                                </p>


                            </div>
                        </div>
                    </div>
                </div>

                <%-- part2--%>

                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Baby Hair-Cut</h2>

                                <%--  <p class="item-intro text-muted">Hair Cuttings</p>--%>
                                <img class="img-fluid d-block mx-auto" src="img/portfolio/babycut.jpg" alt="">
                                <p>Whether your baby was born with lots of hair or barely a hair on their head, eventually the time comes when you need to think about their first haircut. You might love getting your own hair cut as a glimpse of ‘me time’ but for babies who’ve never been for a haircut it can be a bit harrowing so check out our stress-free guide to getting that first haircut.</p>


                            </div>
                        </div>
                    </div>
                </div>

                <%-- part3--%>

                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Adult Hair-Cut</h2>

                                <%--  <p class="item-intro text-muted">Hair Cuttings</p>--%>
                                <img class="img-fluid d-block mx-auto" src="img/portfolio/adulthaircut.jpg" alt="">
                                <p>
                                    Growing up, in a traditional sense, used to mean passing certain milestones: getting married, buying a house, having a kid. For the next little while—what is time, anyway?—we're saying goodbye to all that. We're looking at aging from all different perspectives: why it matters, why it doesn't, what it even means to feel like an adult in the current moment when many of us, in the immortal words of Britney, consider ourselves not a girl and not yet a woman.
                                </p>


                            </div>
                        </div>
                    </div>
                </div>



                <%-- part4--%>

                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Front/Back Hair-Cut</h2>

                                <%--  <p class="item-intro text-muted">Hair Cuttings</p>--%>
                                <img class="img-fluid d-block mx-auto" src="img/portfolio/frontcut.jpg" alt="">
                                <p>
                                    Haircutting takes an incredibly long time to master and requires constant education! In the Ultimate Video Guide to the Best Haircutting Techniques, we have hand-selected many of our favorite videos that we believe will elevate your haircutting skillset to another level.

                                </p>

                                <button class="btn btn-primary" data-dismiss="modal" type="button">
                                    <i class="fa fa-times"></i>
                                    Close</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Modal 2 -->
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>

                <!-- Part1 -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Hair Wash</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/hairwash.jpg" alt="">
                                <p>
                                    Hair washing is the cosmetic act of keeping hair clean by washing it with shampoo or other detergent products and water. Hair conditioner may also be used to improve hair's texture and manageability. Two-in-one shampoos, which have both detergent and conditioning components, are now commonly also used as a replacement for shampoo and conditioner.
                                </p>


                            </div>
                        </div>
                    </div>
                </div>


                <!-- Part2 -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Color Removal</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/colorremoval.jpg" alt="">
                                <p>
                                    Hair color experimentation is a girlhood rite of passage, and having had my fair share of color change this year, I can say that it’s all fun and games until people start asking you what school you go to, and you’re like, “I’m 28. I’m a grown-ass woman!"
                                </p>


                            </div>
                        </div>
                    </div>
                </div>

                <!-- Part3 -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Oil Massage</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/oilmsg.jpg" alt="">
                                <p>
                                    You can try it in a weekend. Whenever, you take the oil massage, Keep at least for an hour, then shampoo it. It will completely reach to your hair roots.After all, oil massage is the beneficial treatment ever for keeping your hair healthy, beautiful, shining and well maintained. So, It is good if you have decided to take an oil massage before bath.
                                </p>

                                <button class="btn btn-primary" data-dismiss="modal" type="button">
                                    <i class="fa fa-times"></i>
                                    Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>


    <!-- Modal 3 -->
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>

                <!-- Part1 -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Filler</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/filler.jpg" alt="">
                                <p>
                                    Injectable filler (injectable cosmetic filler, injectable facial filler) is a soft tissue filler injected into the skin to help fill in facial wrinkles, restoring a smoother appearance. Most of these wrinkle fillers are temporary because they are eventually absorbed by the body.
                                </p>

                                <button class="btn btn-primary" data-dismiss="modal" type="button">
                                    <i class="fa fa-times"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Part2 -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Coloring With Care</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/hairtreat1.jpg" alt="">
                                <p>
                                    Hair coloring, or hair dying, is the practice of changing the hair color. The main reasons for this are cosmetic: to cover gray or white hair, to change to a color regarded as more fashionable or desirable, or to restore the original hair color after it has been discolored by hairdressing processes or sun bleaching
                                </p>


                            </div>
                        </div>
                    </div>
                </div>

                <!-- Part3 -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Collagen</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/colagen.jpg" alt="">
                                <p>
                                    Today I’m excited to share one of my secrets for how I got super strong, healthy hair.  My little secret is collagen! And today I’m sharing my Collagen Hair Mask recipe. It’s such a good one! You’ll want to bookmark this recipe for sure, especially if your hair could use some help. And while this mask benefits all hair types, those of you with damaged and/or color treated hair will notice some pretty dramatic benefits
                                </p>


                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Modal 4 -->
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>
                <!-- Part1 -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Special Facial</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/faciaLL.jpg" alt="">
                                <p>A facial is a family of skin care treatments for the face, including steam, exfoliation, extraction, creams, lotions, facial masks, peels, and massage. They are normally performed in beauty salons, but are also a common spa treatment. They are used for general skin health as well as for specific skin conditions.!</p>


                            </div>
                        </div>
                    </div>
                </div>

                <!-- Part2 -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Special Facial With Mask</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/maskF.jpg" alt="">
                                <p>
                                    Banana Facial Masks. ... Mash up a medium-sized ripe banana into a smooth paste, then gently apply it to your face and neck. Let it set for 10 to 20 minutes, then rinse it off with cold water. Another popular mask recipe calls for 1/4 cup plain yogurt, 2 tablespoons honey (a natural acne remedy), and 1 medium banana.
                                </p>


                            </div>
                        </div>
                    </div>
                </div>

                <!-- Part3 -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Hand Massage</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/handM.jpg" alt="">
                                <p>
                                    Our hands take a beating every day, and can carry a surprising amount of tension. A hand massage can be a quick and rewarding way to relieve stress and tension in someone's hands, and to leave that person feeling relaxed and refreshed. Hand massages are a great way to relax before bed, or to give someone's hands (or your own!) a much-needed break in the middle of a long work day.
                                </p>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- Part4 -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Foot Massage</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/footM.jpg" alt="">
                                <p>
                                    A foot massage is a great way to pamper someone special and help them unwind after a long day. As an added benefit, foot massages can also help to treat issues like headaches, insomnia, and stress.[1] Start by massaging the tops of the feet as well as the heels, soles, toes. You can do deeper massage moves on the ankles, soles, and pressure points to release any tension and create a positive massage experience for the person.
                                </p>

                                <button class="btn btn-primary" data-dismiss="modal" type="button">
                                    <i class="fa fa-times"></i>
                                    Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

    <!-- Modal 5 -->
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>

                <%--  part 1--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Lip & Chin Threading</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/lipandchin.jpg" alt="">
                                <p>
                                    Women of all ages struggle with unwanted lip hair. Threading instantly removes all unwanted hair and peach-fuzz on the upper lip leaving the lip smooth to the touch. Over time upper lip hair becomes much finer by threading.Since the hair is extracted without the use of dangerous chemicals or scolding wax substances upper lip threading has almost no down-time. Some redness may occur but usually dissipates within an hour.
                                </p>

                            </div>
                        </div>
                    </div>
                </div>

                <%--  part 2--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Forehead & Full-Face Threading</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/facethread.jpg" alt="">
                                <p>
                                    Threading allows control when shaping brows to ensure perfectly sculpted eyebrows. A cotton thread is used to glide across the skin, removing excess hair while it does so. Not only that but the thread grabs and teases out every single hair by its root leaving a cleaner finish with longer lasting results. The results are wonderfully neat and perfectly symmetrical eyebrows which can take years off your face.
                                </p>


                            </div>
                        </div>
                    </div>
                </div>

                <%--  part 3--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Eyebrow Threading</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/eyethread.jpg" alt="">
                                <p>
                                    The threading process is quite simple and typically involves a single piece of cotton thread, according to Shobha Tummala, the founder of Shobha hair-removal salon. After wiping the eyebrow area clean with alcohol, the thread is "twisted and pulled along areas of unwanted hair acting like a mini-lasso, lifting the hair follicle directly from the root without the use of any chemicals or unnecessary tugging on delicate skin," she explains.
                                </p>

                                <button class="btn btn-primary" data-dismiss="modal" type="button">
                                    <i class="fa fa-times"></i>
                                    Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>

                <%--  part 4--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">EyeLash</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/eyelash.jpg" alt="">
                                <p>
                                    The world of eyelash extensions has sprung up over the past few years to respond to this exact question. And while the trend has become incredibly prevalent in certain circles and cities, you might still have questions about the safety, cost, comfort, and overall process. To help us suss out the real deal about lash extensions — the good, the bad, and the annoying — we talked to a few pros about what it takes to achieve your dream lashes, below.
                                </p>


                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

    <!-- Modal 6-->
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>
                <%--part 1--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Full Face-Bleech</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/fbleech1.jpg" alt="">
                                <p>This is not true. Dermatologist Dr Apratim Goel says, “Whether you are bleaching your face or your body, bleach contains sodium hypochlorite which causes a chemical reaction, this leads to breakouts on the skin. One must also be careful about the products being used post bleaching. Exposure to sunlight right after bleach causes skin irritation and pigmentation</p>


                            </div>
                        </div>
                    </div>
                </div>


                <%--part 2--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">EyeBrow Bleech</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/eyebrowB.jpg" alt="">
                                <p>
                                    If you use bleach on the tops of your eyebrows, the result is a natural looking eyebrow where stray or dark hairs are lightened. Bleaching can also be used to lighten any hairs between your two eyebrows. ... If you accidentally get bleach creme in your eyes, rinse with water immediately.
                                </p>


                            </div>
                        </div>
                    </div>
                </div>


                <%--part 3--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Lip Bleech</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/lipB.jpg" alt="">
                                <p>
                                    Tens of thousands of men and women out there have dark lips that they would like to make lighter. Dark lips can be the result of many factors including genetics, smoking, the use of certain drugs and even intake of some illicit drugs. One of the challenges of treating any condition on the lips is the fact that the skin there is very thin. In fact, the skin on the lips is the thinnest on the body. This creates the potential for further damage if very aggressive lightening or treatment methods are used. Fortunately, it’s still possible to lighten one’s lips as long as they follow the right protocol. The best way to achieve the best results revolves around the following:
                                </p>

                                <button class="btn btn-primary" data-dismiss="modal" type="button">
                                    <i class="fa fa-times"></i>
                                    Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <!-- Modal 7-->
    <div class="portfolio-modal modal fade" id="portfolioModal7" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>
                <%--part 1--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Front And Back Bleach</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/bbL.jpg" alt="">
                                <p>The skin of our body is darker and coarser than the facial skin. ... Used for years in the Indian households to make Ubtan, these enriching ingredients are known to have skin lightening properties. The unique formulation of Fem Turmeric body bleach gives instant and long lasting fairness, along with smooth silky skin.</p>

                            </div>
                        </div>
                    </div>
                </div>



                <%--part 2--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                <h2 class="text-uppercase">Full-Hand/Half-Hand Bleach</h2>

                                <img class="img-fluid d-block mx-auto" src="img/portfolio/ffB.jpg" alt="">
                                <p>
                                    Throw the gloves away and wash your hands thoroughly with soap and warm water when you are done rinsing the bleach off of your skin. Try to avoid breathing in the scent of the bleach as you cleanse the affected area, and be especially careful not to touch your forehead, nose, or eyes while you're cleaning bleach.
                                </p>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <!-- Modal 8-->
    <div class="portfolio-modal modal fade" id="portfolioModal8" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>

                <%--  part 1--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->

                                <h2 class="text-uppercase">Hand Waxing</h2>
                                <img class="img-fluid d-block mx-auto" src="img/portfolio/fhWAXO.jpg" alt="">
                                <p>Ah, waxing — the hair-ripping ritual that all women are cursed with. As if the pain, the rashes, the allergic reactions and of course, the humiliation wasn’t enough, there’s the added problem of what wax to choose. But fret not, whether you are a first-timer to the salon or making a drastic shift from razors, creams and epilators to wax, here’s your guide to making a wise choice</p>

                            </div>
                        </div>
                    </div>
                </div>


                <%--  part 2--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->

                                <h2 class="text-uppercase">Leg Waxing</h2>
                                <img class="img-fluid d-block mx-auto" src="img/portfolio/LWAX.jpg" alt="">
                                <p>Always go for a patch test if you are getting any part of your body waxed for the first time. While arms, legs, back and the stomach might not be sensitive, waxing the bikini line and using wax on your face can be tricky. “I don’t recommend face waxing — it can lead to skin ailments. For brazilian wax or bikini area, laser hair removal is best as the risk of painful in-growth is low,” Lohia adds.</p>

                            </div>
                        </div>
                    </div>
                </div>

                <%--  part 3--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->

                                <h2 class="text-uppercase">Under Arm Waxing</h2>
                                <img class="img-fluid d-block mx-auto" src="img/portfolio/uaWAX.jpg" alt="">
                                <p>
                                    Apply an ice cube or a cold bottle of water on the waxed area. This helps lessen the pain. Soothe the underarm skin with a cooling moisturiser that contains aloe. Wear loose clothes for some days to avoid chaffing and irritation. To prevent ingrown hair, exfoliate with a mild scrub 24 hours after waxing.
                                </p>

                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

    <!-- Modal 10-->
    <div class="portfolio-modal modal fade" id="portfolioModal9" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>

                <%--  part 1--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->

                                <h2 class="text-uppercase">Hand Henna</h2>
                                <img class="img-fluid d-block mx-auto" src="img/portfolio/hen3.jpg" alt="">
                                <p>Mehndi or mehendi is a form of body art from Ancient India, in which decorative designs are created on a person's body, using a paste, created from the powdered dry leaves of the henna plant (Lawsonia inermis). ... There are many variations including Arabic, Indian and Pakistani designs.</p>
                            </div>
                        </div>
                    </div>
                </div>


                <%--  part 2--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->

                                <h2 class="text-uppercase">Foot Henna</h2>
                                <img class="img-fluid d-block mx-auto" src="img/portfolio/henna1.jpg" alt="">
                                <p>Different countries and regions have different henna designs. Arabic henna designs have bold, abstract lines. Their henna tends to feature larger floral designs. Indian and Pakistan henna is more complex than Arabic’s. Indian henna tattoos are more delicate and detailed. Their designs often involve dots, lines and paisley. Smaller floral designs, elephants and peacocks aren’t often used.</p>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

    <div class="portfolio-modal modal fade" id="portfolioModal10" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl"></div>
                    </div>
                </div>

                <%--  part 1--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->

                                <h2 class="text-uppercase">Hand Nails</h2>
                                <img class="img-fluid d-block mx-auto" src="img/portfolio/nail1.jpg" alt="">
                                <p>
                                    Avoid having your cuticles trimmed during a manicure. Cuticles are meant to be a barrier for bacteria, and cutting them can lead to painful infections. You can moisten and push them back with a cuticle pusher, and trim away only dead pieces of skin.
If you’re planning on having a conventional manicure done, then at least protect your cuticles by dabbing with olive oil or almond oil prior, in order to reduce the amount of chemical that soaks in from the polish.
                                </p>


                            </div>
                        </div>
                    </div>
                </div>


                <%--  part 2--%>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="modal-body">
                                <!-- Project Details Go Here -->

                                <h2 class="text-uppercase">Foot Nails</h2>
                                <img class="img-fluid d-block mx-auto" src="img/portfolio/henna1.jpg" alt="">
                                <p> sincerely believe that for a pair of beautiful legs one must give equal importance to the feet too. I have often seen women who make all the effort to be well dressed and well-groomed, but then when it comes to their feet, they completely ignore them because of which they are either sore or with chapped heels. It’s a pity</p>
                                </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

</asp:Content>
