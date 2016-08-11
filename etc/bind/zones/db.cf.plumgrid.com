;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	dns-vm.cf.plumgrid.com. admin.cf.plumgrid.comt. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
; name servers - NS records
        IN      NS      dns-vm.cf.plumgrid.com.

;
; name servers - A records
dns-vm.cf.plumgrid.com.          IN      A       192.168.14.89
;
; 10.10.0.0/24 - A records
*.cf.plumgrid.com.        IN      A       10.10.0.125
