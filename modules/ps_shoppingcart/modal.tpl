{**
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License 3.0 (AFL-3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* https://opensource.org/licenses/AFL-3.0
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
* @author    PrestaShop SA <contact@prestashop.com>
* @copyright 2007-2017 PrestaShop SA
* @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
* International Registered Trademark & Property of PrestaShop SA
*}
<div id="blockcart-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content"> 

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="modal-title text-sm-center" id="myModalLabel">{l s='Article ajouté au panier' d='Shop.Theme.Checkout'}</div>
			</div>

			<div class="modal-body">
				<div class="row">

					<div class="col-md-4 offset-md-4">  
						<div class="cart-content">

							<div class="cart-info-top">
								<img class="product-image" src="{$product.cover.medium.url}" alt="{$product.cover.legend}" title="{$product.cover.legend}" itemprop="image">
								<div class="product-title">{$product.name}</div>
								<div class="product-price-and-shipping">{$product.price}</div>
								{hook h='displayProductPriceBlock' product=$product type="unit_price"}
								{foreach from=$product.attributes item="property_value" key="property"}
								<span><strong>{$property}</strong>: {$property_value}</span><br>
								{/foreach}
							</div>

							<div class="cart-info-bottom">
								<p><strong>{l s='Quantity:' d='Shop.Theme.Checkout'}</strong>&nbsp;{$product.cart_quantity}</p>
								{if $cart.products_count > 1}
								<p class="cart-products-count">{l s='There are %products_count% items in your cart.' sprintf=['%products_count%' => $cart.products_count] d='Shop.Theme.Checkout'}</p>
								{else}
								<p class="cart-products-count">{l s='There is %product_count% item in your cart.' sprintf=['%product_count%' =>$cart.products_count] d='Shop.Theme.Checkout'}</p>
								{/if}
								<p><strong>{l s='Total products:' d='Shop.Theme.Checkout'}</strong>&nbsp;{$cart.subtotals.products.value}</p>
								<p><strong>{l s='Total shipping:' d='Shop.Theme.Checkout'}</strong>&nbsp;{$cart.subtotals.shipping.value} {hook h='displayCheckoutSubtotalDetails' subtotal=$cart.subtotals.shipping}</p>
								{if $cart.subtotals.tax}
								<p><strong>{$cart.subtotals.tax.label}</strong>&nbsp;{$cart.subtotals.tax.value}</p>
								{/if}
								<p><strong>{l s='Total:' d='Shop.Theme.Checkout'}</strong>&nbsp;{$cart.totals.total.value} {$cart.labels.tax_short}</p>
							</div>

						</div>
					</div>

					<div class="col-md-12 "> 
						<div class="cart-content">
							<div class="cart-content-btn">
								<button type="button" class="btn btn-black" data-dismiss="modal">
									<i class="fa fa-angle-left" aria-hidden="true"></i>
									{l s='Continue shopping' d='Shop.Theme.Actions'}
								</button>
								<a href="{$cart_url}" class="btn btn-black">
									{l s='valider mon panier' d='Shop.Theme.Actions'}
									<i class="fa fa-angle-right" aria-hidden="true"></i>
								</a>
							</div>
						</div>
					</div>  

				</div>  
			</div>  
			
		</div>
	</div>
</div>

