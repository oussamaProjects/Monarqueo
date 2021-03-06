/**
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
 */
import 'expose-loader?Tether!tether';
import 'bootstrap/dist/js/bootstrap.min';
import 'owl-carousel-2/owl.carousel.min';
import 'flexibility';
import 'bootstrap-touchspin';

import './responsive';
import './checkout';
import './customer';
import './listing';
import './product';
import './cart';
import './sliders';

import DropDown from './components/drop-down';
import Form from './components/form';
import ProductMinitature from './components/product-miniature';
import ProductSelect from './components/product-select';
import TopMenu from './components/top-menu';

import prestashop from 'prestashop';
import EventEmitter from 'events';

import './lib/bootstrap-filestyle.min';
import './lib/jquery.scrollbox.min';

import './components/block-cart';

// "inherit" EventEmitter
for (var i in EventEmitter.prototype) {
  prestashop[i] = EventEmitter.prototype[i];
}

$(document).ready(() => {
  let dropDownEl = $('.js-dropdown');
  const form = new Form();
  let topMenuEl = $('.js-top-menu ul[data-depth="0"]');
  let dropDown = new DropDown(dropDownEl);
  let topMenu = new TopMenu(topMenuEl);
  let productMinitature = new ProductMinitature();
  let productSelect  = new ProductSelect();
  dropDown.init();
  form.init();
  topMenu.init();
  productMinitature.init();
  productSelect.init();


  let share = $(".social-sharing");
  share.on('click', function(){ 
    $(this).find(" .social-sharing-container").stop().slideToggle('300');
  }); 

  let collapse_cat_menu = $(".collapse_cat_menu");
  let collapse_cat_menu_1 = collapse_cat_menu.parents('li[data-depth="0"]').children(".collapse-icons");
  let collapse_cat_menu_2 = collapse_cat_menu.parents('li[data-depth="1"]').children(".collapse-icons");
  
  setTimeout(function(){    
     collapse_cat_menu.trigger('click'); 
     if (collapse_cat_menu_1 != 'undefined') {
        collapse_cat_menu_1.addClass('active'); 
        collapse_cat_menu_1.trigger('click'); 
     }
     if (collapse_cat_menu_2 != 'undefined') {
        collapse_cat_menu_2.addClass('active')
        collapse_cat_menu_2.trigger('click'); 
     }  
  },1);
  
  $(document).on( 'scroll', function(){
    if ($(window).scrollTop() > 100) {
        $('.GoToHeader').addClass('show');
    } else {
        $('.GoToHeader').removeClass('show');
    }
  });
  
  $('.GoToHeader').click(function(){
    $('html').animate({scrollTop:0}, 'slow');
    return false;
  }); 

});
