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

<div class="col-lg-3 col-md-6 col-xs-6">
  <div class="logo_white">
    <img src="{$urls.img_url}logo_white.png" alt="Monarqueo">
  </div>
</div>

{foreach $linkBlocks as $linkBlock}
<div class="col-lg-3 col-md-6 col-xs-6 menu-footer">
  <div class="ul_title">{$linkBlock.title}</div>
  {assign var=_expand_id value=10|mt_rand:100000} 
  <ul class="ul_footer">
      {foreach $linkBlock.links as $link}
      <li>
        <a
        id="{$link.id}-{$linkBlock.id}"
        class="{$link.class}"
        href="{$link.url}"
        title="{$link.description}"
        {if !empty($link.target)} target="{$link.target}" {/if}
        >
        {$link.title}
      </a>
    </li>
    {/foreach}
  </ul>
</div>
{/foreach} 
