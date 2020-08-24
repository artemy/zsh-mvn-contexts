#compdef mvnctx

mvnctx () {
	context=${1:?Specify a context}
	m2_settings_path="$HOME/.m2/settings.xml"
	m2_security_settings_path="$HOME/.m2/settings-security.xml"
	target_context_settings="$HOME/.m2/contexts/${context}.xml"
	target_context_security_settings="$HOME/.m2/contexts/${context}-security.xml"
	# Settings
	rm -f $m2_settings_path
	ln -s $target_context_settings $m2_settings_path
	# Security settings
	rm -f $m2_security_settings_path
	if [ -f "$target_context_security_settings" ]; then
	    ln -s $target_context_security_settings $m2_security_settings_path
	fi
}

_mvnctx () {
	_files -W $HOME/.m2/contexts -g '*.xml(:r)'
}

compdef _mvnctx mvnctx
