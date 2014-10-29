.class public final Lcom/instagram/m/c;
.super Ljava/lang/Object;
.source "Experiments.java"


# static fields
.field public static final a:Lcom/instagram/m/a;

.field public static final b:Lcom/instagram/m/a;

.field public static final c:Lcom/instagram/m/a;

.field public static final d:Lcom/instagram/m/a;

.field public static final e:Lcom/instagram/m/a;

.field public static final f:Lcom/instagram/m/a;

.field public static final g:Lcom/instagram/m/a;

.field public static final h:Lcom/instagram/m/b;

.field public static final i:Lcom/instagram/m/b;

.field public static final j:Lcom/instagram/m/b;

.field public static final k:Lcom/instagram/m/b;

.field public static final l:Lcom/instagram/m/b;

.field public static final m:Lcom/instagram/m/b;

.field public static final n:Lcom/instagram/m/b;

.field public static final o:[Lcom/instagram/m/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 9
    new-instance v0, Lcom/instagram/m/a;

    const-string v1, "ig_android_find_friends_show_follow_destination"

    invoke-direct {v0, v1}, Lcom/instagram/m/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->a:Lcom/instagram/m/a;

    .line 11
    new-instance v0, Lcom/instagram/m/a;

    const-string v1, "ig_android_single_feed_follow_button_2"

    invoke-direct {v0, v1}, Lcom/instagram/m/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->b:Lcom/instagram/m/a;

    .line 13
    new-instance v0, Lcom/instagram/m/a;

    const-string v1, "ig_android_fixed_brightness_for_camera_only"

    invoke-direct {v0, v1}, Lcom/instagram/m/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->c:Lcom/instagram/m/a;

    .line 15
    new-instance v0, Lcom/instagram/m/a;

    const-string v1, "ig_android_follow_button_large_everywhere"

    invoke-direct {v0, v1}, Lcom/instagram/m/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->d:Lcom/instagram/m/a;

    .line 17
    new-instance v0, Lcom/instagram/m/a;

    const-string v1, "ig_android_typeahead_search"

    invoke-direct {v0, v1}, Lcom/instagram/m/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->e:Lcom/instagram/m/a;

    .line 19
    new-instance v0, Lcom/instagram/m/a;

    const-string v1, "ig_android_scrollable_navigation_bar"

    invoke-direct {v0, v1}, Lcom/instagram/m/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->f:Lcom/instagram/m/a;

    .line 21
    new-instance v0, Lcom/instagram/m/a;

    const-string v1, "ig_android_chaining_button"

    invoke-direct {v0, v1}, Lcom/instagram/m/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->g:Lcom/instagram/m/a;

    .line 27
    new-instance v0, Lcom/instagram/m/b;

    const-string v1, "ig_android_registration_local_push"

    const-string v2, "push_variations"

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->h:Lcom/instagram/m/b;

    .line 30
    new-instance v0, Lcom/instagram/m/b;

    const-string v1, "ig_android_phone_reg_canary"

    const-string v2, "method"

    const-string v3, "email_only"

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->i:Lcom/instagram/m/b;

    .line 33
    new-instance v0, Lcom/instagram/m/b;

    const-string v1, "ig_android_phone_reg_world"

    const-string v2, "method"

    const-string v3, "email_only"

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->j:Lcom/instagram/m/b;

    .line 36
    new-instance v0, Lcom/instagram/m/b;

    const-string v1, "ig_android_large_img_upload_multi"

    const-string v2, "size"

    const-string v3, "640"

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->k:Lcom/instagram/m/b;

    .line 39
    new-instance v0, Lcom/instagram/m/b;

    const-string v1, "ig_android_tabbed_explore_and_search"

    const-string v2, "tabbed_explore"

    const-string v3, "false"

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->l:Lcom/instagram/m/b;

    .line 42
    new-instance v0, Lcom/instagram/m/b;

    const-string v1, "ig_android_tabbed_explore_and_search"

    const-string v2, "search_ui_change"

    const-string v3, "false"

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->m:Lcom/instagram/m/b;

    .line 45
    new-instance v0, Lcom/instagram/m/b;

    const-string v1, "ig_android_tabbed_explore_and_search"

    const-string v2, "remove_search_glyph_on_profile"

    const-string v3, "false"

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/c;->n:Lcom/instagram/m/b;

    .line 50
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/instagram/m/b;

    const/4 v1, 0x0

    sget-object v2, Lcom/instagram/m/c;->h:Lcom/instagram/m/b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/instagram/m/c;->i:Lcom/instagram/m/b;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/instagram/m/c;->j:Lcom/instagram/m/b;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/instagram/m/c;->a:Lcom/instagram/m/a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/instagram/m/c;->k:Lcom/instagram/m/b;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/instagram/m/c;->b:Lcom/instagram/m/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/instagram/m/c;->c:Lcom/instagram/m/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/instagram/m/c;->d:Lcom/instagram/m/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/instagram/m/c;->e:Lcom/instagram/m/a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/instagram/m/c;->f:Lcom/instagram/m/a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/instagram/m/c;->g:Lcom/instagram/m/a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/instagram/m/c;->l:Lcom/instagram/m/b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/instagram/m/c;->m:Lcom/instagram/m/b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/instagram/m/c;->n:Lcom/instagram/m/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/m/c;->o:[Lcom/instagram/m/b;

    return-void
.end method
