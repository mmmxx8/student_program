-keepattributes *Annotation*
-keepattributes Signature
-keepattributes InnerClasses

# Preserve Supabase and HTTP classes
-keep class com.supabase.** { *; }
-keep class io.supabase.** { *; }

# Preserve custom entities / models if needed
-keepclassmembers class * {
    factory *...fromSupabase(...);
    factory *...fromJson(...);
}