/**
 * Learning Log JavaScript
 * Handles form interactions, validation, and UI enhancements
 */

class LearningLogUI {
  constructor() {
    this.init();
  }

  init() {
    this.setupFormValidation();
    this.setupPasswordToggles();
    this.setupAlerts();
    this.setupTooltips();
  }

  /**
   * Setup form validation with progressive disclosure
   */
  setupFormValidation() {
    const forms = document.querySelectorAll('form[data-validate]');

    forms.forEach(form => {
      const inputs = form.querySelectorAll('input, textarea, select');

      inputs.forEach(input => {
        // Show errors only after user interaction
        input.addEventListener('blur', () => {
          this.showFieldError(input);
        });

        input.addEventListener('focus', () => {
          this.hideFieldError(input);
        });

        input.addEventListener('input', () => {
          this.validateField(input);
        });
      });

      // Handle form submission
      form.addEventListener('submit', (e) => {
        if (!this.validateForm(form)) {
          e.preventDefault();
        }
      });
    });
  }

  /**
   * Setup password visibility toggles
   */
  setupPasswordToggles() {
    const toggles = document.querySelectorAll('.password-toggle');

    toggles.forEach(toggle => {
      toggle.addEventListener('click', () => {
        const targetId = toggle.dataset.target;
        const targetInput = document.getElementById(targetId);

        if (targetInput) {
          const isPassword = targetInput.type === 'password';
          targetInput.type = isPassword ? 'text' : 'password';
          toggle.textContent = isPassword ? '🙈' : '👁️';
          toggle.setAttribute('aria-label',
            isPassword ? 'Hide password' : 'Show password');
        }
      });
    });
  }

  /**
   * Setup password requirements display
   */
  setupPasswordRequirements() {
    const passwordFields = document.querySelectorAll('input[type="password"]');

    passwordFields.forEach(field => {
      const requirements = field.parentElement.querySelector('.password-requirements');

      if (requirements) {
        field.addEventListener('focus', () => {
          requirements.style.display = 'block';
        });

        field.addEventListener('blur', () => {
          setTimeout(() => {
            requirements.style.display = 'none';
          }, 200);
        });

        field.addEventListener('input', () => {
          this.updatePasswordRequirements(field, requirements);
        });
      }
    });
  }

  /**
   * Update password requirements based on input
   */
  updatePasswordRequirements(field, requirements) {
    const password = field.value;

    const rules = {
      length: password.length >= 8,
      number: /\d/.test(password),
      letter: /[a-zA-Z]/.test(password),
      uppercase: /[A-Z]/.test(password),
      lowercase: /[a-z]/.test(password),
      special: /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/.test(password)
    };

    Object.keys(rules).forEach(rule => {
      const element = requirements.querySelector(`[data-rule="${rule}"]`);
      if (element) {
        element.classList.toggle('valid', rules[rule]);
      }
    });
  }

  /**
   * Setup alert dismiss functionality
   */
  setupAlerts() {
    const alerts = document.querySelectorAll('.alert');

    alerts.forEach(alert => {
      const dismissBtn = alert.querySelector('.alert-dismiss');

      if (dismissBtn) {
        dismissBtn.addEventListener('click', () => {
          alert.style.opacity = '0';
          setTimeout(() => {
            alert.remove();
          }, 300);
        });
      }

      // Auto-dismiss success alerts after 5 seconds
      if (alert.classList.contains('alert-success')) {
        setTimeout(() => {
          if (alert.parentElement) {
            alert.style.opacity = '0';
            setTimeout(() => {
              alert.remove();
            }, 300);
          }
        }, 5000);
      }
    });
  }

  /**
   * Setup tooltips
   */
  setupTooltips() {
    const tooltipElements = document.querySelectorAll('[data-tooltip]');

    tooltipElements.forEach(element => {
      element.addEventListener('mouseenter', (e) => {
        this.showTooltip(e.target);
      });

      element.addEventListener('mouseleave', () => {
        this.hideTooltip();
      });
    });
  }

  /**
   * Show tooltip
   */
  showTooltip(element) {
    const text = element.dataset.tooltip;
    if (!text) return;

    const tooltip = document.createElement('div');
    tooltip.className = 'tooltip';
    tooltip.textContent = text;

    document.body.appendChild(tooltip);

    const rect = element.getBoundingClientRect();
    tooltip.style.left = `${rect.left + rect.width / 2}px`;
    tooltip.style.top = `${rect.top - 10}px`;

    // Adjust position if tooltip goes off screen
    const tooltipRect = tooltip.getBoundingClientRect();
    if (tooltipRect.right > window.innerWidth) {
      tooltip.style.left = `${window.innerWidth - tooltipRect.width - 10}px`;
    }
    if (tooltipRect.left < 0) {
      tooltip.style.left = '10px';
    }

    setTimeout(() => tooltip.classList.add('show'), 10);
  }

  /**
   * Hide tooltip
   */
  hideTooltip() {
    const tooltip = document.querySelector('.tooltip');
    if (tooltip) {
      tooltip.classList.remove('show');
      setTimeout(() => tooltip.remove(), 300);
    }
  }

  /**
   * Show field error
   */
  showFieldError(input) {
    const errorElement = input.parentElement.querySelector('.form-error');
    if (errorElement && errorElement.textContent.trim()) {
      errorElement.classList.add('show');
      input.classList.add('error');
    }
  }

  /**
   * Hide field error
   */
  hideFieldError(input) {
    const errorElement = input.parentElement.querySelector('.form-error');
    if (errorElement) {
      errorElement.classList.remove('show');
    }
    input.classList.remove('error');
  }

  /**
   * Validate single field
   */
  validateField(input) {
    // Basic validation - can be extended
    const value = input.value.trim();
    const isRequired = input.hasAttribute('required');

    if (isRequired && !value) {
      this.showFieldError(input);
      return false;
    }

    // Email validation
    if (input.type === 'email' && value) {
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailRegex.test(value)) {
        this.showFieldError(input);
        return false;
      }
    }

    // Password validation
    if (input.type === 'password' && value) {
      if (value.length < 8) {
        this.showFieldError(input);
        return false;
      }
    }

    this.hideFieldError(input);
    return true;
  }

  /**
   * Validate entire form
   */
  validateForm(form) {
    const inputs = form.querySelectorAll('input[required], textarea[required], select[required]');
    let isValid = true;

    inputs.forEach(input => {
      if (!this.validateField(input)) {
        isValid = false;
      }
    });

    return isValid;
  }

  /**
   * Utility method to create alerts
   */
  static createAlert(message, type = 'info', dismissible = true) {
    const alert = document.createElement('div');
    alert.className = `alert alert-${type}`;

    const icon = type === 'success' ? '✓' :
                 type === 'error' ? '✗' :
                 type === 'warning' ? '⚠' : 'ℹ';

    alert.innerHTML = `
      <span class="alert-icon">${icon}</span>
      <div class="alert-content">${message}</div>
      ${dismissible ? '<button class="alert-dismiss" aria-label="Dismiss">&times;</button>' : ''}
    `;

    return alert;
  }

  /**
   * Utility method to show loading state
   */
  static setLoading(element, loading = true) {
    if (loading) {
      element.setAttribute('disabled', 'true');
      element.dataset.originalText = element.textContent;
      element.innerHTML = '<span class="spinner"></span> Loading...';
    } else {
      element.removeAttribute('disabled');
      element.innerHTML = element.dataset.originalText || element.textContent;
    }
  }
}

// Initialize when DOM is ready
document.addEventListener('DOMContentLoaded', () => {
  new LearningLogUI();
});

// Add tooltip styles
const tooltipStyles = `
.tooltip {
  position: absolute;
  background: var(--color-gray-900);
  color: var(--color-white);
  padding: var(--spacing-2) var(--spacing-3);
  border-radius: var(--border-radius-md);
  font-size: var(--font-size-sm);
  white-space: nowrap;
  z-index: var(--z-tooltip);
  opacity: 0;
  transform: translateY(10px);
  transition: all var(--transition-fast);
  pointer-events: none;
}

.tooltip.show {
  opacity: 1;
  transform: translateY(0);
}

.tooltip::after {
  content: '';
  position: absolute;
  top: 100%;
  left: 50%;
  transform: translateX(-50%);
  border: 5px solid transparent;
  border-top-color: var(--color-gray-900);
}

.spinner {
  display: inline-block;
  width: 16px;
  height: 16px;
  border: 2px solid var(--color-white);
  border-radius: 50%;
  border-top-color: transparent;
  animation: spin 1s linear infinite;
  margin-right: var(--spacing-2);
}

@keyframes spin {
  to { transform: rotate(360deg); }
}
`;

// Inject tooltip styles
const styleSheet = document.createElement('style');
styleSheet.textContent = tooltipStyles;
document.head.appendChild(styleSheet);