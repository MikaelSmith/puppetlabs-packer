class windows_template::configure_services()
{
    # TODO Disable Windows Search Service if it exists

    # Configure WinRM service
    service { 'WinRM':
      ensure => 'running',
      enable => true,
    }

    # Netbios and lmosts are handled in scripting as they
    # need to be sequenced carefully during the post-clone-first-boot

    # Disable Windows Update service
    service { 'wuauserv':
      ensure => 'stopped',
      enable => false,
    }
}