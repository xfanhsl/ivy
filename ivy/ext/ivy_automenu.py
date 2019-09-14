# ------------------------------------------------------------------------------
# This extension automatically generates a menu containing links to every node
# in the site. The menu can be accessed in templates via the 'automenu'
# attribute.
#
# If a node has a 'menu_title' attribute, its value will be used in the
# menu in place of the node's title.
#
# By default entries are ordered alphabetically by filename. Entry order can
# be customized by giving nodes an integer 'menu_order' attribute with
# lower orders coming first. The default order value is 0. (Note that the
# homepage is an exception and will always be the first entry in the menu.)
# ------------------------------------------------------------------------------

import ivy


# We generate the menu once and cache it for future use.
cache = None


# Register a callback to add the 'automenu' attribute to each page context.
@ivy.hooks.register('render_page')
def add_automenu(page):
    global cache
    if cache is None:
        cache = get_pagelist()
    page['automenu'] = cache
    page['autofoot'] = get_pagefoot()


def get_pagelist():
    menu = ['<ul>\n']

    root = ivy.nodes.root()
    title = root.get('menu_title') or root.get('title') or 'Home'
    menu.append('<li><a href="@root/">%s</a></li>\n' % title)

    for child in sorted_children(root):
        add_node(child, menu)

    menu.append('</ul>')
    return ''.join(menu)


def add_node(node, menu):
    menu.append('<li>')

    title = node.get('menu_title') or node.get('title') or 'Untitled Node'
    menu.append('<a href="%s">%s</a>' % (node.url, title))

    if node.has_children:
        menu.append('<ul>\n')
        for child in sorted_children(node):
            add_node(child, menu)
        menu.append('</ul>\n')

    menu.append('</li>\n')


def sorted_children(node):
    return sorted(node.childlist, key=lambda n: n.get('menu_order', 0))

def get_pagefoot():
    foot = ['<div class="copyright">© 蜀ICP备18032917号 ']
    foot.append('<a href="@root/about//">%s</a> | ' % ivy.site.config['author'])
    foot.append('<a href="%s">Github</a> | ' % ivy.site.config['github'])
    foot.append('<a href="%s">Facebook</a> | ' % ivy.site.config['facebook'])
    foot.append('<a href="%s">Twitter</a> | ' % ivy.site.config['twitter'])
    foot.append('<a href="%s">简书</a> | ' % ivy.site.config['jianshu'])
    foot.append('<a href="%s">网易云课堂</a></div>' % ivy.site.config['yunclass'])
    return ''.join(foot)
