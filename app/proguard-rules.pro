# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile


-keepclasseswithmembernames class * {native <methods>;}
-dontwarn android.support.v4.**
-keepattributes SourceFile, LineNumberTable, Signature
-keepattributes *Annotation*
# Add this global rule
-keepattributes Signature
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public class * extends com.bumptech.glide.module.AppGlideModule
-keep public enum com.bumptech.glide.load.imageHeaderParser$**{
**[] $VALUES;
public *;
}
-dontwarn okio.**
-dontwarn retrofit2.Platform$Java8
-keep class co.paystack.android.**{*;}
-keep class com.android.vending.billing.**

-keep class com.microboss.dev.ValidatorModel{*;}

# for DexGuard only
#-keepresourcexmlelements manifest/application/meta-data@value=GlideModule

# This rule will properly ProGuard all the model classes in
# the package com.yourcompany.models. Modify to fit the structure
# of your app.
-keepclassmembers class com.microboss.dev.** {
  *;
  }