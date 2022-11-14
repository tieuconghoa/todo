<template>
    <div class="footer">
        <footer class="container">
            <div class="row py-5">
                <div class="col-2 text-left">
                    <div class="h3">SHOP</div>
                    <div>Drink</div>
                    <div>Giftcard</div>
                    <div>Store Locator</div>
                    <div>Refer a Friend</div>
                </div>
                <div class="col-2 text-left">
                    <div class="h3">HELP</div>
                    <div>Contact Us</div>
                    <div>FAQ</div>
                    <div>Accessibility</div>
                </div>
                <div class="col-2 text-left">
                    <div class="h3">ABOUT</div>
                    <div>Our Story</div>
                    <div>OLIPOP Digest</div>
                    <div>Ingredents</div>
                    <div>Digestive Health</div>
                    <div>Wholesale</div>
                    <div>Press</div>
                    <div>Careers</div>
                </div>
                <div class="col-6 pr-4">
                    <div class="discount text-right">Sign up to get 10% off your first order</div>
                    <div class="d-flex justify-content-end pt-2 subcribe">
                        <input type="text" placeholder="Your Email Address" class="form-control" />
                        <input type="button" class="ml-4 btn btn-warning" value="Subcribe" />
                    </div>
                </div>
            </div>
            <div class="row pb-2 footer-end">
                <div class="copy-right col-6 text-left font-weight-blold">© Shoping.com. All Right Reserved</div>
                <div class="policy col-6 d-flex justify-content-space-between">
                    <div>Terms of Service</div>
                    <div>Privacy Policy</div>
                    <div>Do Not Sell My Information</div>
                </div>
            </div>
        </footer>
        <div class="sine-wave">
            <svg class="svg-waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
                <defs>
                    <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z">
                    </path>
                </defs>
                <g class="svg-waves__parallax">
                    <use xlink:href="#gentle-wave" x="24" y="0"></use>
                </g>
            </svg>
        </div>
    </div>
</template>
<style>
.footer {
    width: 100%;
    background-color: #1c3b35;
    color: #000;
    position: relative;
    background: linear-gradient(72.12deg,
            #fbdbe3 0%,
            #f5c7e1 34.72%,
            #d0dee8 75.75%,
            #60e4e2 100%);
}


.subcribe input {
    border-radius: 25px;
    padding: 0 20px;
}

/* Sine Wave Animation Effect */

.svg-waves {
    position: absolute;
    bottom: 0;
    left: 0;
    z-index: 1;
    width: 100%;
    height: 180px;
}
.footer-end {
    z-index: 100;
}

@media (max-width: 767px) {
    .svg-waves {
        height: 80px;
    }
}

.svg-waves__parallax>use:nth-child(1) {
    -webkit-animation-delay: -2s;
    animation-delay: -2s;
    -webkit-animation-duration: 7s;
    animation-duration: 7s;
    fill: rgba(255, 255, 255, 0.7);
}
</style>