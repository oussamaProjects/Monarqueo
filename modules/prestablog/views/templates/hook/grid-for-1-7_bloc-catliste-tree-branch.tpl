{*
 * 2008 - 2017 (c) HDClic
 *
 * MODULE PrestaBlog
 *
 * @author    HDClic <prestashop@hdclic.com>
 * @copyright Copyright (c) permanent, HDClic
 * @license   Addons PrestaShop license limitation
 * @version    4.0.1
 * @link    http://www.hdclic.com
 *
 * NOTICE OF LICENSE
 *
 * Don't use this module on several shops. The license provided by PrestaShop Addons
 * for all its modules is valid only once for a single shop.
 *}

<ul>
{foreach from=$node item=Item name=myLoop}
	<li>
		<div class="catblog_p">
			<a href="{PrestaBlogUrl c=$Item.id_prestablog_categorie titre=$Item.link_rewrite}">
				{if isset($Item.image_presente) && $prestablog_config.prestablog_catnews_showthumb}<img src="{$prestablog_theme_upimg|escape:'html':'UTF-8'}c/adminth_{$Item.id_prestablog_categorie|intval}.jpg?{$md5pic|escape:'htmlall':'UTF-8'}" alt="{$Item.link_rewrite|escape:'htmlall':'UTF-8'}" class="catblog_img lastlisteimg" />{/if}
				<i class="fa fa-angle-right" aria-hidden="true"></i>
				<span class="catblog_title">{$Item.title|escape:'htmlall':'UTF-8'}</span>
				{if $prestablog_config.prestablog_catnews_shownbnews && $Item.nombre_news_recursif > 0}&nbsp;<span class="catblog_nb_news">({$Item.nombre_news_recursif|intval})</span>{/if}
			</a>
			{if $prestablog_config.prestablog_catnews_rss}<a target="_blank" href="{PrestaBlogUrl rss=$Item.id_prestablog_categorie}"><img src="{$prestablog_theme_dir|escape:'html':'UTF-8'}/img/rss.png" alt="Rss feed" align="absmiddle" /></a>{/if}
			{if $prestablog_config.prestablog_catnews_showintro}
			<a class="catblog_desc" href="{PrestaBlogUrl c=$Item.id_prestablog_categorie titre=$Item.link_rewrite}"><br /><span>{$Item.description_crop|escape:'htmlall':'UTF-8'}</span></a>{/if}
		</div>
		{if $Item.children|@count > 0}
			{include file="$tree_branch_path" node=$Item.children}
		{/if}
	</li>
{/foreach}
</ul>
