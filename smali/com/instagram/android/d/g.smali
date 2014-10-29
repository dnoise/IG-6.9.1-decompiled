.class final Lcom/instagram/android/d/g;
.super Ljava/lang/Object;
.source "AvatarHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/instagram/android/d/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/d/f;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;

    iput-object p2, p0, Lcom/instagram/android/d/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/instagram/share/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;

    invoke-virtual {v0}, Lcom/instagram/android/d/f;->e()V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;

    iget-object v0, v0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Lcom/instagram/android/activity/TwitterAuthActivity;->b(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;

    invoke-static {p1}, Lcom/instagram/common/y/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/d/f;->a(Lcom/instagram/android/d/f;Ljava/io/File;)Ljava/io/File;

    .line 113
    iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;

    iget-object v0, v0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;

    invoke-static {v2}, Lcom/instagram/android/d/f;->a(Lcom/instagram/android/d/f;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/creation/base/e;->a(Landroid/support/v4/app/Fragment;ILjava/io/File;)V

    .line 114
    return-void
.end method

.method private a(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;

    iget-object v1, p0, Lcom/instagram/android/d/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/instagram/android/d/f;->b(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/instagram/android/d/g;->a:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;

    invoke-virtual {v0}, Lcom/instagram/android/d/f;->c()V

    .line 126
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;

    const-string v1, ".jpg"

    invoke-static {v1}, Lcom/instagram/creation/photo/c/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/d/f;->b(Lcom/instagram/android/d/f;Ljava/io/File;)Ljava/io/File;

    .line 130
    iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;

    iget-object v0, v0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;

    invoke-static {v2}, Lcom/instagram/android/d/f;->b(Lcom/instagram/android/d/f;)Ljava/io/File;

    move-result-object v2

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/creation/photo/c/a;->a(Landroid/support/v4/app/Fragment;ILjava/io/File;Ljava/lang/String;)V

    .line 134
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter "which"

    .prologue
    .line 98
    sget v0, Lcom/facebook/az;->remove_current_picture:I

    invoke-direct {p0, p2, v0}, Lcom/instagram/android/d/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;

    invoke-virtual {v0}, Lcom/instagram/android/d/f;->b()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    sget v0, Lcom/facebook/az;->take_picture:I

    invoke-direct {p0, p2, v0}, Lcom/instagram/android/d/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-direct {p0}, Lcom/instagram/android/d/g;->c()V

    goto :goto_0

    .line 102
    :cond_2
    sget v0, Lcom/facebook/az;->choose_from_library:I

    invoke-direct {p0, p2, v0}, Lcom/instagram/android/d/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/instagram/android/d/g;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/instagram/android/d/g;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 104
    :cond_3
    sget v0, Lcom/facebook/az;->import_from_facebook:I

    invoke-direct {p0, p2, v0}, Lcom/instagram/android/d/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    invoke-direct {p0}, Lcom/instagram/android/d/g;->b()V

    goto :goto_0

    .line 106
    :cond_4
    sget v0, Lcom/facebook/az;->import_from_twitter:I

    invoke-direct {p0, p2, v0}, Lcom/instagram/android/d/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/instagram/android/d/g;->a()V

    goto :goto_0
.end method
