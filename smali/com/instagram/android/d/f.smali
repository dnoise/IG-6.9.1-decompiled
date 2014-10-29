.class public abstract Lcom/instagram/android/d/f;
.super Ljava/lang/Object;
.source "AvatarHelper.java"


# instance fields
.field protected a:[Ljava/lang/CharSequence;

.field protected b:Landroid/support/v4/app/Fragment;

.field private c:Landroid/os/Handler;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private f:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/d/f;->c:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    .line 63
    if-eqz p2, :cond_2

    .line 64
    const-string v0, "tempCameraPhotoFile"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;

    .line 69
    :cond_0
    const-string v0, "tempGalleryPhotoFile"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/instagram/android/d/f;->d:Ljava/io/File;

    .line 74
    :cond_1
    const-string v0, "tempGalleryUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/instagram/android/d/f;->f:Landroid/net/Uri;

    .line 76
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/d/f;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/d/f;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/d/f;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/instagram/android/d/f;->d:Ljava/io/File;

    return-object p1
.end method

.method static synthetic b(Lcom/instagram/android/d/f;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/d/f;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;

    return-object p1
.end method

.method private b(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instagram/creation/photo/crop/a;->b(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;

    move-result-object v0

    .line 222
    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/a;->b(I)Lcom/instagram/creation/photo/crop/a;

    .line 223
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/instagram/creation/photo/crop/CropActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/a;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 225
    iget-object v0, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V

    .line 226
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/d/f;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/d/f;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/instagram/android/d/f;->a(IILandroid/content/Intent;Z)V

    .line 188
    return-void
.end method

.method public final a(IILandroid/content/Intent;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 193
    packed-switch p1, :pswitch_data_0

    .line 211
    if-nez p4, :cond_0

    .line 212
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 195
    :pswitch_0
    invoke-virtual {p0}, Lcom/instagram/android/d/f;->e()V

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/d/f;->d:Ljava/io/File;

    invoke-static {p3, v0}, Lcom/instagram/creation/base/e;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/d/f;->b(Landroid/net/Uri;)V

    goto :goto_0

    .line 201
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/instagram/android/d/f;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 205
    :pswitch_3
    iget-object v0, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/c/a;->a(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 208
    iget-object v0, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;

    invoke-static {p3, v0}, Lcom/instagram/creation/photo/c/a;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/d/f;->b(Landroid/net/Uri;)V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 94
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->set_a_profile_picture:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/instagram/android/d/f;->b(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/d/g;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/d/g;-><init>(Lcom/instagram/android/d/f;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 142
    return-void
.end method

.method protected abstract a(Landroid/net/Uri;)V
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "tempCameraPhotoFile"

    iget-object v1, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/d/f;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "tempGalleryPhotoFile"

    iget-object v1, p0, Lcom/instagram/android/d/f;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/d/f;->f:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 88
    const-string v0, "tempGalleryUri"

    iget-object v1, p0, Lcom/instagram/android/d/f;->f:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    :cond_2
    return-void
.end method

.method protected abstract b()V
.end method

.method public b(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/instagram/android/d/f;->a:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/instagram/android/d/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    new-array v0, v5, [Ljava/lang/CharSequence;

    sget v1, Lcom/facebook/az;->import_from_facebook:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lcom/facebook/az;->take_picture:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lcom/facebook/az;->choose_from_library:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/instagram/android/d/f;->a:[Ljava/lang/CharSequence;

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/d/f;->a:[Ljava/lang/CharSequence;

    return-object v0

    .line 174
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    sget v1, Lcom/facebook/az;->take_picture:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lcom/facebook/az;->choose_from_library:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lcom/facebook/az;->import_from_facebook:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lcom/facebook/az;->import_from_twitter:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/instagram/android/d/f;->a:[Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected c()V
    .locals 5

    .prologue
    .line 145
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/instagram/android/d/f;->f()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    sget-object v2, Lcom/instagram/share/b/g;->a:[Ljava/lang/String;

    new-instance v3, Lcom/instagram/android/d/h;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/d/h;-><init>(Lcom/instagram/android/d/f;B)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    goto :goto_0
.end method

.method protected abstract e()V
.end method

.method protected abstract f()V
.end method

.method protected abstract i()Z
.end method
