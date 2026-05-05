import 'package:flutter/material.dart';
import 'dart:ui';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  // --- UI FLOW STATE ---
  bool _isLoginView = true;

  // --- FORM KEYS ---
  final _loginFormKey = GlobalKey<FormState>();
  final _signupFormKey = GlobalKey<FormState>();

  // --- CONTROLLERS ---
  final _loginEmailController = TextEditingController();
  final _loginPasswordController = TextEditingController();

  final _signupEmailController = TextEditingController();
  final _signupPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  // --- LOCAL STATE VARIABLES ---
  bool _obscureLoginPassword = true;
  bool _obscureSignupPassword = true;
  bool _obscureConfirmPassword = true;
  bool _rememberMe = false;

  @override
  void dispose() {
    // Always dispose controllers to prevent memory leaks
    _loginEmailController.dispose();
    _loginPasswordController.dispose();
    _signupEmailController.dispose();
    _signupPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  // --- STATE MUTATION METHODS ---
  void _toggleView() {
    setState(() {
      _isLoginView = !_isLoginView;
    });
  }

  // --- VALIDATORS ---
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Please enter your email';
    const emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    if (!RegExp(emailRegex).hasMatch(value)) return 'Enter a valid email';
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Please enter your password';
    if (value.length < 8) return 'Password must be at least 8 characters';
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) return 'Please confirm your password';
    if (value != _signupPasswordController.text)
      return 'Passwords do not match';
    return null;
  }

  // --- SUBMIT ACTIONS ---
  void _handleLogin() {
    if (_loginFormKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Logged In Successfully!"),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  void _handleSignup() {
    if (_signupFormKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Account Created Successfully!"),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            // Network image loaded once for the entire flow
            image: NetworkImage(
              'https://images.unsplash.com/photo-1620121692029-d088224ddc74?q=80&w=2032',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.black.withOpacity(0.4),
            child: SafeArea(
              child: Stack(
                children: [
                  // Static Header
                  const Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: Text(
                      'Vitara',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  // Animated View Switcher
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: _isLoginView
                        ? _buildLoginView()
                        : _buildSignupView(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // --- LOGIN WIDGET TREE ---
  Widget _buildLoginView() {
    return SingleChildScrollView(
      key: const ValueKey('loginView'), // Key required for AnimatedSwitcher
      padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
      child: Form(
        key: _loginFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderText('Continue With Your\nSmart Ring'),
            const SizedBox(height: 10),

            const LabelText('Email'),
            FrostedGlassTextField(
              hintText: 'Enter your email',
              controller: _loginEmailController,
              validator: _validateEmail,
            ),

            const LabelText('Password'),
            FrostedGlassTextField(
              hintText: 'Enter your password',
              controller: _loginPasswordController,
              validator: _validatePassword,
              obscureText: _obscureLoginPassword,
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureLoginPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: Colors.white.withOpacity(0.5),
                ),
                onPressed: () => setState(
                  () => _obscureLoginPassword = !_obscureLoginPassword,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (val) =>
                            setState(() => _rememberMe = val ?? false),
                        activeColor: Colors.grey,
                        checkColor: Colors.black,
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            FrostedGlassButton(
              onPressed: _handleLogin,
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),

            const OrContinueDivider(),
            const SocialLoginRow(),
            const SizedBox(height: 40),

            _buildToggleText("Don't have an account? ", "Create an account"),
          ],
        ),
      ),
    );
  }

  // --- SIGNUP WIDGET TREE ---
  Widget _buildSignupView() {
    return SingleChildScrollView(
      key: const ValueKey('signupView'), // Key required for AnimatedSwitcher
      padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
      child: Form(
        key: _signupFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderText('Create Your Wellness\nJourney Today'),
            const SizedBox(height: 10),

            const LabelText('Email'),
            FrostedGlassTextField(
              hintText: 'Enter your email',
              controller: _signupEmailController,
              validator: _validateEmail,
            ),

            const LabelText('Password'),
            FrostedGlassTextField(
              hintText: 'Enter your password',
              controller: _signupPasswordController,
              validator: _validatePassword,
              obscureText: _obscureSignupPassword,
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureSignupPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: Colors.white.withOpacity(0.5),
                ),
                onPressed: () => setState(
                  () => _obscureSignupPassword = !_obscureSignupPassword,
                ),
              ),
            ),

            const LabelText('Confirm password'),
            FrostedGlassTextField(
              hintText: 'Confirm your password',
              controller: _confirmPasswordController,
              validator: _validateConfirmPassword,
              obscureText: _obscureConfirmPassword,
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureConfirmPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: Colors.white.withOpacity(0.5),
                ),
                onPressed: () => setState(
                  () => _obscureConfirmPassword = !_obscureConfirmPassword,
                ),
              ),
            ),
            const SizedBox(height: 32),

            FrostedGlassButton(
              onPressed: _handleSignup,
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),

            const OrContinueDivider(),
            const SocialLoginRow(),
            const SizedBox(height: 40),

            _buildToggleText("Already have an account? ", "Login"),
          ],
        ),
      ),
    );
  }

  // --- HELPER FOR BOTTOM TEXT ---
  Widget _buildToggleText(String normalText, String boldText) {
    return Center(
      child: InkWell(
        onTap: _toggleView,
        child: RichText(
          text: TextSpan(
            text: normalText,
            style: const TextStyle(color: Colors.white70),
            children: [
              TextSpan(
                text: boldText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================================
// OPTIMIZED REUSABLE STATELESS WIDGETS
// Keeping these outside the state class keeps the file clean and performant.
// ============================================================================

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        height: 1.2,
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  final String text;
  const LabelText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 16.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.white70),
      ),
    );
  }
}

class FrostedGlassTextField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool obscureText;

  const FrostedGlassTextField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.controller,
    required this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(16),
              suffixIcon: suffixIcon,
            ),
            validator: validator,
          ),
        ),
      ),
    );
  }
}

class FrostedGlassButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const FrostedGlassButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              foregroundColor: Colors.white,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

class SocialLoginRow extends StatelessWidget {
  const SocialLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FrostedGlassButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://authjs.dev/img/providers/google.svg',
                  height: 20,
                  color: Colors.white,
                  errorBuilder: (ctx, _, __) => const Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 8),
                const Text('Google'),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: FrostedGlassButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://authjs.dev/img/providers/apple.svg',
                  height: 20,
                  color: Colors.white,
                  errorBuilder: (ctx, _, __) =>
                      const Icon(Icons.apple, color: Colors.white, size: 20),
                ),
                const SizedBox(width: 8),
                const Text('Apple'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class OrContinueDivider extends StatelessWidget {
  const OrContinueDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Row(
        children: [
          Expanded(child: Divider(color: Colors.white.withOpacity(0.2))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Or continue with',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
          Expanded(child: Divider(color: Colors.white.withOpacity(0.2))),
        ],
      ),
    );
  }
}
