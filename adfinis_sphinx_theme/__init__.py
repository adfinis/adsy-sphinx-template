import os 
dir_path = os.path.dirname(os.path.realpath(__file__))

def config_inited(app, config):
    config['html_title'] = config['project']
    config['html_theme'] = 'sphinx_rtd_theme'
    config['html_static_path'].append(dir_path + '/static')
    config['html_css_files'].append('css/adsy.css')
    # The logo is inserted via CSS
    #config['html_logo'] = dir_path + '/logo.png'

def setup(app):
    app.setup_extension('sphinx.ext.autodoc')
    app.connect('config-inited', config_inited)

