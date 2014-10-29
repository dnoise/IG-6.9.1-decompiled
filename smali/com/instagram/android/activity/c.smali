.class public final Lcom/instagram/android/activity/c;
.super Ljava/lang/Object;
.source "CaptureFlowHelper.java"


# instance fields
.field public a:Ljava/io/File;

.field private b:Landroid/content/Context;

.field private c:Lcom/instagram/android/activity/e;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    move-object v0, p1

    check-cast v0, Lcom/instagram/android/activity/e;

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/activity/c;-><init>(Landroid/content/Context;Lcom/instagram/android/activity/e;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/activity/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/activity/c;)Lcom/instagram/android/activity/e;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    sget v1, Lcom/facebook/az;->legacy_camera_capture_options_item_photo:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    sget v2, Lcom/facebook/az;->legacy_camera_capture_options_item_video:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    sget v3, Lcom/facebook/az;->legacy_camera_capture_options_item_gallery:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {}, Lcom/instagram/creation/c/a;->d()Z

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 125
    new-instance v2, Lcom/instagram/ui/dialog/b;

    iget-object v4, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/facebook/az;->legacy_camera_capture_options_title:I

    invoke-virtual {v2, v4}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v2

    new-instance v4, Lcom/instagram/android/activity/d;

    invoke-direct {v4, p0, v3, v0, v1}, Lcom/instagram/android/activity/d;-><init>(Lcom/instagram/android/activity/c;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3, v4}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 154
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;ILjava/lang/String;)V

    .line 95
    return-void
.end method

.method private a(Landroid/net/Uri;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 163
    const/16 v0, 0x2711

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;IILjava/lang/String;)V

    .line 164
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/activity/c;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/instagram/p/a;->g:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->c()V

    .line 158
    iget-object v0, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/common/y/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    .line 159
    iget-object v0, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;

    iget-object v1, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/instagram/android/activity/e;->a(Ljava/io/File;)V

    .line 160
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 238
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/activity/c;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/instagram/android/activity/c;->b()V

    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/instagram/android/activity/c;->c()V

    .line 187
    sget-object v0, Lcom/instagram/p/a;->f:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "backed_out_of_flow"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 189
    iget-object v0, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;

    iget v1, p0, Lcom/instagram/android/activity/c;->d:I

    invoke-interface {v0, p1, v1}, Lcom/instagram/android/activity/e;->a(II)V

    .line 222
    :goto_0
    return-void

    .line 194
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    iget v0, p0, Lcom/instagram/android/activity/c;->d:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/instagram/android/activity/c;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/activity/c;->c()V

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;

    invoke-interface {v0}, Lcom/instagram/android/activity/e;->h_()V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    invoke-static {p3, v0}, Lcom/instagram/creation/base/e;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;I)V

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v0, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/c/a;->a(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 204
    iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    invoke-static {p3, v0}, Lcom/instagram/creation/photo/c/a;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;I)V

    goto :goto_0

    .line 211
    :pswitch_3
    iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 212
    invoke-direct {p0, v0}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/net/Uri;IILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    sget-object v0, Lcom/instagram/p/a;->j:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->c()V

    .line 168
    iput p2, p0, Lcom/instagram/android/activity/c;->d:I

    .line 169
    iget-object v0, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/instagram/creation/photo/crop/a;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;

    move-result-object v0

    .line 171
    iget v1, p0, Lcom/instagram/android/activity/c;->d:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/a;->a(I)Lcom/instagram/creation/photo/crop/a;

    .line 172
    iget-boolean v1, p0, Lcom/instagram/android/activity/c;->e:Z

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/a;->a(Z)Lcom/instagram/creation/photo/crop/a;

    .line 174
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    const-class v3, Lcom/instagram/android/creation/activity/MediaCaptureActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/a;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 177
    if-eqz p4, :cond_0

    .line 178
    const-string v0, "caption"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;

    invoke-interface {v0, v1, p3}, Lcom/instagram/android/activity/e;->a_(Landroid/content/Intent;I)V

    .line 182
    return-void
.end method

.method public final a(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput p2, p0, Lcom/instagram/android/activity/c;->d:I

    .line 99
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    const-class v2, Lcom/instagram/android/creation/activity/MediaCaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    const-string v1, "videoFilePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    const-string v1, "mediaSource"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    if-eqz p3, :cond_0

    .line 104
    const-string v1, "caption"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;

    const/16 v2, 0x2714

    invoke-interface {v1, v0, v2}, Lcom/instagram/android/activity/e;->a_(Landroid/content/Intent;I)V

    .line 110
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "tempPhotoFile"

    iget-object v1, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    const-string v0, "isDirectShare"

    iget-boolean v1, p0, Lcom/instagram/android/activity/c;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    const-string v0, "mediaSource"

    iget v1, p0, Lcom/instagram/android/activity/c;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    return-void
.end method

.method public final a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/instagram/android/activity/c;->e:Z

    .line 71
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/instagram/p/a;->a()V

    .line 73
    sget-object v1, Lcom/instagram/p/a;->a:Lcom/instagram/p/a;

    invoke-virtual {v1}, Lcom/instagram/p/a;->b()Lcom/instagram/common/analytics/b;

    move-result-object v1

    .line 74
    const-string v2, "is_direct_share"

    iget-boolean v3, p0, Lcom/instagram/android/activity/c;->e:Z

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    .line 75
    invoke-virtual {v0}, Lcom/instagram/l/a/b;->f()Z

    move-result v0

    .line 77
    iget-object v2, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/camera/a;->a(Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    const-string v0, "has_built_in_camera"

    invoke-virtual {v1, v0, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    .line 79
    invoke-direct {p0}, Lcom/instagram/android/activity/c;->b()V

    .line 90
    :goto_0
    invoke-virtual {v1}, Lcom/instagram/common/analytics/b;->a()V

    .line 91
    return-void

    .line 80
    :cond_0
    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_2

    .line 81
    :cond_1
    const-string v0, "advanced_camera_enabled"

    invoke-virtual {v1, v0, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    .line 82
    invoke-direct {p0}, Lcom/instagram/android/activity/c;->a()V

    goto :goto_0

    .line 84
    :cond_2
    const-string v0, "advanced_camera_enabled"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    .line 85
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;

    const-class v3, Lcom/instagram/android/creation/activity/MediaCaptureActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const/high16 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    const-string v2, "directShare"

    iget-boolean v3, p0, Lcom/instagram/android/activity/c;->e:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    iget-object v2, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;

    const/16 v3, 0x2711

    invoke-interface {v2, v0, v3}, Lcom/instagram/android/activity/e;->a_(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 249
    if-eqz p1, :cond_1

    .line 250
    const-string v0, "tempPhotoFile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/io/File;

    const-string v1, "tempPhotoFile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    .line 253
    :cond_0
    const-string v0, "isDirectShare"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/activity/c;->e:Z

    .line 254
    const-string v0, "mediaSource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/activity/c;->d:I

    .line 256
    :cond_1
    return-void
.end method
