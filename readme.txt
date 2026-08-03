=== Payment Multicaixa (ProxyPay gateway) for WooCommerce ===
Contributors: nakedcatplugins, webdados
Tags: angola, ecommerce, emis, proxypay, mobile
Requires at least: 5.8
Tested up to: 7.1
Requires PHP: 7.2
Stable tag: 4.2
License: GPLv3
License URI: https://www.gnu.org/licenses/gpl-3.0.html

This plugin allows customers with an Angolan bank account to pay WooCommerce orders in Kwanzas using Multicaixa (Pagamentos por Referência), through ProxyPay’s payment gateway.

== Description ==

“Pagamento por Referência” (payment by reference) on Multicaixa (Angolan ATM network), or Home Banking services, is one of the most popular and secure ways to pay for services and (online) purchases in Angola.

This plugin will allow you to generate a payment Reference the customer can use to pay for his WooCommerce order in Kwanzas, through an ATM or Home Banking service.

With the PRO add-on, your customers can also pay for orders with their mobile phone number using Multicaixa Express.

This plugin works with the [ProxyPay](https://proxypay.co.ao/) gateway, and a contract with an Angolan bank and [TimeBoxed](http://timeboxed.co.ao/) (the company behind ProxyPay) is required. Technical support is provided by [Naked Cat Plugins](https://nakedcatplugins.com).

= Features: =

* Generates a Multicaixa Reference for simple payment on the Angolan ATM network or Home Banking service;
* 24 hours reference validity;
* Compatible with High-Performance Order Storage for WooCommerce
* Compatible with WooCommerce Blocks checkout
* WPML tested and compatible (for multilingual shops);
* Polylang tested;

= PRO add-on features: =

* NEW: Multicaixa Express mobile payment:
	* Accept mobile payments with MCX Express, with the customer’s mobile phone number;
	* Both for the classic and blocks checkout;
* Multicaixa Reference payment:
	* Automatic Webhook call can be activated upon request to ProxyPay, via the plugin settings screen;
	* Configuration of reference validity in hours, days, weeks, or months;
	* Ability to reduce stock when the order is created or paid;
	* Automatically update the payment reference, and notify the client, if the order total is changed on a backend order modification;
	* Allows searching orders (in the admin area) by Multicaixa Reference;
	* Automatic cancellation of orders with expired references;
	* Integration with ProxyPay’s SMS system;
* For both payment methods:
	* Automatically changes the order status to “Processing” (or “Completed” if the order only contains virtual downloadable products) and notifies both the customer and the store owner;
	* Shop owner can set minimum and maximum order totals for the payment gateway to be available;
	* Payment method can be deactivated if the client doesn’t have an Angolan address;
	* ProxyPay Sandbox support;

[Know more and get the plugin PRO add-on now](https://wbds.pt/We6).

= Other (premium) plugins =

Do you already know our other WooCommerce (premium) plugins?

* [Advanced Coupon Restrictions for WooCommerce](https://nakedcatplugins.com/product/advanced-coupon-restrictions-for-woocommerce/) - Create coupons for any Product Taxonomy, User details, and Order destination.
* [Simple Checkout Fields Manager for WooCommerce](https://nakedcatplugins.com/product/simple-custom-fields-for-woocommerce-blocks-checkout/) - Add custom fields and manage (remove, make required or optional) core fields on the new WooCommerce Block-based Checkout
* [Simple WooCommerce Order Approval](https://nakedcatplugins.com/product/simple-woocommerce-order-approval/) - The hassle-free solution for WooCommerce order approval before payment
* [Shop as Client for WooCommerce](https://nakedcatplugins.com/product/shop-as-client-for-woocommerce-pro-add-on/) - Quickly create orders on behalf of your customers
* [Taxonomy/Term and Role based Discounts for WooCommerce](https://nakedcatplugins.com/product/taxonomy-term-and-role-based-discounts-for-woocommerce-pro-add-on/) - Easily create bulk discount rules for products based on any taxonomy terms (built-in or custom)

== Installation ==

* Use the included automatic install feature on your WordPress admin panel and search for “Multicaixa WooCommerce ProxyPay”.
* Go to WooCoomerce > Settings > Payments > Pagamento por Referência no Multicaixa and fill in the details provided by ProxyPay and your bank to activate this payment method. A contract with TimeBoxed (the company behind ProxyPay) and a bank is mandatory.
* Start receiving payments :-)
* Optionally, [buy and download the PRO add-on](https://wbds.pt/We6) to set up Multicaixa Express payment and get other extended features

== Frequently Asked Questions ==

= Can I start receiving payments right away? =

You have to sign a contract with ProxyPay and an Angolan bank to activate this service. Go to [https://proxypay.co.ao/](https://proxypay.co.ao/) for more information. They can help you out with all the subscription process with them and the bank.

= Can I get Multicaixa Express mobile payments? =

Yes, with the [PRO add-on](https://wbds.pt/We6)

= [WPML] My website is multilingual. Will I be able to use this plugin? =

Yes. This plugin is WPML compatible. You will need the WPML and WPML String Translation Plugins (alongside WooCommerce Multilingual, which is mandatory for any WooCommerce + WPML install). 

= [WPML] How can I translate the payment method title and description the client sees in the checkout page to secondary languages? =

Go to WPML > String Translation > Search and translate the `multicaixa_proxypay_gateway_title` and `multicaixa_proxypay_gateway_description`, strings in the `woocommerce` domain. Don’t forget to check the “Translation is complete” checkbox and click “Save”. You should also translate the “Extra instructions” strings by searching the `multicaixa_proxypay_extra_instructions` string on the `woo_multicaixa`.

= [SMS] How to include the Multicaixa payment instructions in the SMS sent by “WooCommerce - APG SMS Notifications”, “Twilio SMS Notifications” or “YITH WooCommerce SMS Notification”? =

You’ll need the [plugin PRO add-on](https://wbds.pt/We6).

= [SMS] How to trigger the ProxyPay SMS system? =

You’ll need the [plugin PRO add-on](https://wbds.pt/We6).

= [Advanced] The order is set “On Hold”, can I make it “Pending” by default? =

I don’t know why on earth you would want to do this, but… yes, you can. Just return `false` to the `multicaixa_proxypay_set_on_hold` filter.
Be advised that no “new order” email, with payment instructions, will be sent to the client unless you use some plugin or custom code to force it.

= [Advanced] Can I prevent the plugin from adding the payment instructions and/or the payment received message to emails? =

You can use the `multicaixa_proxypay_email_instructions_pending_send` filter: return false and the payment instructions won’t be included in the “new order” email – we do not recommend you do it, though.
You can use the `multicaixa_proxypay_email_instructions_payment_received_send` filter: return false and the payment received message won’t be included in the “processing” email.

= [Advanced] How can I use the plugin with the ProxyPay sandbox, for tests? =

You should return true to the `multicaixa_proxypay_test_mode` filter, or use the [plugin PRO add-on](https://wbds.pt/We6) to activate the test mode with a simple checkbox.

= Can I contribute with a translation? =

Sure. Go to [GlotPress](https://translate.wordpress.org/projects/wp-plugins/woo-multicaixa) and help us out.

= I need technical support. Who should I contact, ProxyPay or Naked Cat Plugins (by Webdados)? =

Development and (premium) support is provided by [Naked Cat Plugins (by Webdados)](https://nakedcatplugins.com/).
We do not provide free support for this free plugin, but you can submit bug reports here at WordPress.org
You’ll get included support if you buy the [plugin PRO add-on](https://wbds.pt/We6).
For premium support or custom developments, you should contact [Webdados](https://www.webdados.pt/contactos/). Charges may (and most certainly will) apply.

= Where do I report security vulnerabilities found in this plugin? =  
 
You can report any security bugs found in the source code of this plugin through the [Patchstack Vulnerability Disclosure Program](https://patchstack.com/database/vdp/woo-multicaixa). The Patchstack team will assist you with verification, CVE assignment and take care of notifying the developers of this plugin.

== Changelog ==

= 4.2 - 2026-08-03 =
* [FIX] Redirect to the plugin's settings page after activation
* [FIX] License validation could silently break on WP-CLI or behind some reverse proxies (PRO add-on)
* [FIX] Undefined variable notice when checking if the Multicaixa reference value had changed on the order screen (PRO add-on)
* [FIX] The order status AJAX fallback response returned an "expirde" key instead of "expired" (PRO add-on)
* [FIX] The technical support link was not properly escaped (PRO add-on)
* [NEW] Technical support and Terms and conditions links added next to the license key (PRO add-on)
* [NEW] The license status now shows a distinct "Expired" state instead of just Valid/Invalid (PRO add-on)
* [DEV] Tested with WordPress 7.1 and WooCommerce 11.0.0-rc.3

= 4.1.1 - 2026-08-02 =
* [TWEAK] Support sidebar link now refers to Naked Cat Plugins instead of the old PT Woo Plugins name
* [FIX] Fatal error when a customer note was added to an order with a different WPML language than the site's default
* [DEV] Implement build and release GitHub actions

= 4.1 - 2025-10-02 =
* [FIX] The update checker on the plugin settings page was not working (PRO add-on)
* [FIX] Icons on the WooCommerce block-based Checkout
* [DEV] Improve WordPress Coding Standards
* [DEV] Tested with WordPress 6.9-alpha-60812 and WooCommerce 10.2.2

= 4.0 - 2025-04-26 =
* [NEW] Multicaixa Express mobile payment (PRO add-on)
* [NEW] We are now called Naked Cat Plugins 😻
* [FIX] Make sure the value on the order metabox is shown in Kwanzas and not the shop’s main currency, if different
* [DEV] Start implementing WordPress Coding Standards
* [DEV] New `order_needs_payment` method to abstract for both payment gateways
* [DEV] Allow Multicaixa Express (Only available on the PRO add-on) to interact with the main plugin
* [DEV] Requires WordPress 5.8, WooCommerce 7.1, and PHP 7.2
* [DEV] Tested with WordPress 6.8, and WooCommerce 9.8.2

= 3.0 - 2024-11-13 =
* [FIX] Load text domain at the right time to avoid PHP notices on WordPress 6.7 and above
* [FIX] Deprecated: Creation of dynamic property in PHP 8.3
* [DEV] Updater improvements (PRO add-on)
* [DEV] Requires WooCommerce 7.0
* [DEV] Tested with WordPress 6.7 and WooCommerce 9.4.1

= 2.2 - 2023-12-12 =
* Declare WooCommerce block-based Cart and Checkout compatibility
* Requires WordPress 5.4
* Tested with WordPress 6.5-alpha-57159 and WooCommerce 8.4.0-rc.1

= 2.1 - 2023-08-28 =
* Fix internals needed to search orders with expired references
* Tested with WordPress 6.4-alpha-56479 and WooCommerce 8.0.2

= 2.0 - 2023-07-24 =
* High-Performance Order Storage for WooCommerce compatibility (in beta)
* WooCommerce Blocks checkout compatibility (in beta)
* Fix license key change on the PRO add-on
* Some code refactoring
* Tested with WordPress 6.3-beta4-56226 and WooCommerce 8.0.0-beta.1

= 1.3.0 - 2022-06-29 =
* New brand: PT Woo Plugins 🥳
* Requires WordPress 5.0, WooCommerce 3.0 and PHP 7.0
* Tested with WordPress 6.1-alpha-53556 and WooCommerce 6.7.0-beta.2

= 1.2.1 - 2021-03-12 =
* Tested with WordPress 5.8-alpha-50516 and WooCommerce 5.1.0

= 1.2.0 =
* [New `multicaixa_create_ref_min` and `multicaixa_create_ref_max` filters](https://gist.github.com/webdados/18952481449022275169f59ec5abb2b0) to allow narrowing the references interval and make sure different platforms using the same entity do not create duplicate references
* Tested with WordPress 5.7-alpha-49798 and WooCommerce 4.8

= 1.1.0 =
* Tested with WordPress 5.6-beta3-49562 and WooCommerce 4.7.1-beta.1

= 1.0.9 =
* Better debugging
* Tested with WordPress 5.5-alpha-47574 and WooCommerce 4.1.0-beta.2

= 1.0.8 =
* Small visual tweaks on the settings page
* Allow PRO add-on to add extra content to the settings page
* Fix SVG banner on the payment instructions
* Tested with WordPress 5.3.1-alpha-46798 and WooCommerce 3.9.0-beta.1

= 1.0.7 =
* Tested with WordPress 5.2.4-alpha-46074 and WooCommerce 3.8.0-beta.1

= 1.0.6 =
* Tested with WordPress 5.2.3-alpha-45552 and WooCommerce 3.7.0-beta.1
* WordPress 4.9 minimum requirement
* PHP 5.6 minimum requirement

= 1.0.5 =
* readme.txt tweaks
* Tested with WordPress 5.2.3-alpha and WooCommerce 3.6.5

= 1.0.4 =
* Fix minimum and maximum payment values
* Tested with WordPress 5.1.1 and WooCommerce 3.6.0 (RC 2)

= 1.0.3.1 =
* Fix version number

= 1.0.3 =
* Fix SVG icon
* Tested with WordPress 5.1 and WooCommerce 3.5.6

= 1.0.2 =
* Tested with WordPress 5.0.2 and WooCommerce 3.5.2

= 1.0.1 =
* readme.txt improvements
* Small fixes

= 1.0 =
* Initial release.