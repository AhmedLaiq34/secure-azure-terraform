# Virtual Network Configuration Guide

This document explains all available VNet configuration options and their cost implications for the Azure Landing Zone.

## Configuration Options Overview

### ✅ **All Fields Explicitly Included (Cost-Optimized)**

| Field | Status | Cost | Description |
|-------|--------|------|-------------|
| `dns_servers` | ✅ Included | $0 | Custom DNS servers (uses Azure DNS by default) |
| `ddos_protection_plan` | ✅ Included | $0/$2,944/mo | DDoS protection (disabled by default) |
| `encryption` | ✅ Included | $0 | Encryption enforcement (disabled by default) |
| `edge_zone` | ✅ Included | $0 | Edge zones (disabled by default) |
| `ip_address_pool` | ✅ Included | $0 | IPv6 address pools (disabled by default) |
| `private_endpoint_vnet_policies` | ✅ Included | $0 | Private endpoint policies (enabled by default) |

## Detailed Field Explanations

### 1. **dns_servers**
- **Purpose**: Custom DNS server configuration
- **Default**: Empty array (uses Azure DNS)
- **Cost**: $0
- **When to use**: Hybrid scenarios with on-premises DNS

```hcl
# Example: Custom DNS servers
dns_servers = ["10.0.0.4", "10.0.0.5"]
```

### 2. **ddos_protection_plan**
- **Purpose**: Azure DDoS Protection Standard
- **Default**: false (disabled)
- **Cost**: $0 (disabled) vs $2,944/month (enabled)
- **When to enable**: Production environments requiring DDoS protection

```hcl
# Example: Enable DDoS protection
ddos_protection_plan = true
```

### 3. **encryption**
- **Purpose**: Encryption enforcement for VNet traffic
- **Default**: false (disabled)
- **Cost**: $0
- **When to enable**: Strict security requirements

```hcl
# Example: Enable encryption
encryption = true
```

### 4. **edge_zone**
- **Purpose**: Azure Edge Zones for ultra-low latency
- **Default**: false (disabled)
- **Cost**: $0 (but requires edge zone resources)
- **When to enable**: Gaming, IoT, real-time applications

```hcl
# Example: Enable edge zone
edge_zone = true
```

### 5. **ip_address_pool**
- **Purpose**: IPv6 address pools for dual-stack VNets
- **Default**: false (disabled)
- **Cost**: $0
- **When to enable**: IPv6-enabled applications

```hcl
# Example: Enable IPv6 address pool
ip_address_pool = true
```

### 6. **private_endpoint_vnet_policies**
- **Purpose**: Private endpoint policies on VNet level
- **Default**: true (enabled)
- **Cost**: $0
- **When to disable**: Only if you have specific private endpoint requirements

```hcl
# Example: Disable private endpoint policies
private_endpoint_vnet_policies = false
```

## Cost Optimization Strategy

### **Development/Testing Environments**
```hcl
locals {
  networking = {
    # Use all defaults (minimal cost)
    dns_servers = []
    ddos_protection_plan = false
    encryption = false
    edge_zone = false
    ip_address_pool = false
    private_endpoint_vnet_policies = true
  }
}
```

### **Production Environments**
```hcl
locals {
  networking = {
    # Enhanced security (still cost-optimized)
    dns_servers = ["10.0.0.4", "10.0.0.5"]  # Custom DNS if needed
    ddos_protection_plan = false             # Keep disabled for cost
    encryption = true                        # Enable for security
    edge_zone = false                        # Keep disabled
    ip_address_pool = false                  # Keep disabled
    private_endpoint_vnet_policies = true    # Keep enabled
  }
}
```

### **High-Security Environments**
```hcl
locals {
  networking = {
    # Maximum security (higher cost)
    dns_servers = ["10.0.0.4", "10.0.0.5"]
    ddos_protection_plan = true              # $2,944/month
    encryption = true
    edge_zone = false                        # Keep disabled
    ip_address_pool = false                  # Keep disabled
    private_endpoint_vnet_policies = true
  }
}
```

## Cost Breakdown

| Configuration | Monthly Cost | Annual Cost |
|---------------|--------------|-------------|
| **Minimal (Default)** | $0 | $0 |
| **Standard Production** | $0 | $0 |
| **High Security** | $2,944 | $35,328 |

## Recommendations

### **For Development/Testing**
- Use all defaults
- Focus on functionality over security
- Cost: $0

### **For Production**
- Enable DDoS protection only if required
- Use strict encryption if compliance requires it
- Keep private endpoint policies enabled
- Cost: $0-$2,944/month

### **For High-Security Environments**
- Enable DDoS protection
- Use strict encryption
- Custom DNS if needed
- Cost: $2,944/month

## Enabling Additional Features

All fields are now explicitly included. To enable additional features, simply set the boolean flags to `true`:

```hcl
locals {
  networking = {
    # ... existing configuration ...
    
    # Enable edge zones for ultra-low latency
    edge_zone = true
    
    # Enable IPv6 address pools
    ip_address_pool = true
    
    # Enable DDoS protection (cost: $2,944/month)
    ddos_protection_plan = true
    
    # Enable encryption enforcement
    encryption = true
  }
}
```

## Security Considerations

1. **DDoS Protection**: Only enable if your application requires it
2. **Encryption**: Use "DropUnencrypted" for strict security requirements
3. **Private Endpoint Policies**: Keep enabled for enhanced security
4. **DNS**: Use custom DNS only for hybrid scenarios

## Compliance Notes

- **SOC 2**: DDoS protection may be required
- **PCI DSS**: Encryption enforcement may be required
- **HIPAA**: Private endpoint policies recommended
- **ISO 27001**: All security features recommended
