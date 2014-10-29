.class public Lcom/instagram/android/fragment/fy;
.super Lcom/instagram/ui/menu/e;
.source "UserOptionsFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# static fields
.field private static final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private aa:Lcom/instagram/android/d/n;

.field private ab:Lcom/instagram/o/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/instagram/android/fragment/fy;

    sput-object v0, Lcom/instagram/android/fragment/fy;->i:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/instagram/ui/menu/e;-><init>()V

    return-void
.end method

.method private V()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v3, Lcom/instagram/ui/menu/f;

    sget v4, Lcom/facebook/az;->find_friends_menu_label:I

    new-instance v5, Lcom/instagram/android/fragment/fz;

    invoke-direct {v5, p0}, Lcom/instagram/android/fragment/fz;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v3, Lcom/instagram/ui/menu/f;

    sget v4, Lcom/facebook/az;->posts_you_liked:I

    new-instance v5, Lcom/instagram/android/fragment/gk;

    invoke-direct {v5, p0}, Lcom/instagram/android/fragment/gk;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, Lcom/instagram/o/b/a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    new-instance v3, Lcom/instagram/ui/menu/f;

    sget v4, Lcom/facebook/az;->check_for_updates:I

    new-instance v5, Lcom/instagram/android/fragment/go;

    invoke-direct {v5, p0}, Lcom/instagram/android/fragment/go;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    new-instance v3, Lcom/instagram/ui/menu/d;

    sget v4, Lcom/facebook/az;->settings:I

    invoke-direct {v3, v4}, Lcom/instagram/ui/menu/d;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v3, Lcom/instagram/ui/menu/f;

    sget v4, Lcom/facebook/az;->linked_accounts:I

    new-instance v5, Lcom/instagram/android/fragment/gp;

    invoke-direct {v5, p0}, Lcom/instagram/android/fragment/gp;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v3, Lcom/instagram/ui/menu/f;

    sget v4, Lcom/facebook/az;->push_notification_settings:I

    new-instance v5, Lcom/instagram/android/fragment/gq;

    invoke-direct {v5, p0}, Lcom/instagram/android/fragment/gq;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_1

    .line 134
    new-instance v3, Lcom/instagram/ui/menu/f;

    sget v4, Lcom/facebook/az;->camera:I

    new-instance v5, Lcom/instagram/android/fragment/gr;

    invoke-direct {v5, p0}, Lcom/instagram/android/fragment/gr;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    new-instance v3, Lcom/instagram/ui/menu/f;

    sget v4, Lcom/facebook/az;->videos:I

    new-instance v5, Lcom/instagram/android/fragment/gs;

    invoke-direct {v5, p0}, Lcom/instagram/android/fragment/gs;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v0}, Lcom/instagram/l/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    new-instance v0, Lcom/instagram/ui/menu/aa;

    sget v3, Lcom/facebook/az;->save_original_photos:I

    invoke-virtual {v1}, Lcom/instagram/l/b/a;->x()Z

    move-result v1

    new-instance v4, Lcom/instagram/android/fragment/gt;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/gt;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v0, v3, v1, v4}, Lcom/instagram/ui/menu/aa;-><init>(IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2
    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->support:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcom/instagram/ui/menu/f;

    sget v1, Lcom/facebook/az;->instagram_help_center:I

    new-instance v3, Lcom/instagram/android/fragment/gu;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/gu;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Lcom/instagram/ui/menu/f;

    sget v1, Lcom/facebook/az;->report_problem:I

    new-instance v3, Lcom/instagram/android/fragment/ga;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ga;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->about:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {}, Lcom/instagram/service/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    new-instance v0, Lcom/instagram/ui/menu/f;

    sget v1, Lcom/facebook/az;->about_ads:I

    new-instance v3, Lcom/instagram/android/fragment/gb;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/gb;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_3
    new-instance v0, Lcom/instagram/ui/menu/f;

    sget v1, Lcom/facebook/az;->instagram_blog:I

    new-instance v3, Lcom/instagram/android/fragment/gc;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/gc;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Lcom/instagram/ui/menu/f;

    sget v1, Lcom/facebook/az;->privacy_policy:I

    new-instance v3, Lcom/instagram/android/fragment/gd;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/gd;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lcom/instagram/ui/menu/f;

    sget v1, Lcom/facebook/az;->terms_of_service:I

    new-instance v3, Lcom/instagram/android/fragment/ge;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ge;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v0, Lcom/instagram/ui/menu/f;

    sget v1, Lcom/facebook/az;->about_this_version:I

    new-instance v3, Lcom/instagram/android/fragment/gf;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/gf;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->account:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v0, Lcom/instagram/ui/menu/f;

    sget v1, Lcom/facebook/az;->clear_search_history:I

    new-instance v3, Lcom/instagram/android/fragment/gg;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/gg;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v0, Lcom/instagram/ui/menu/f;

    sget v1, Lcom/facebook/az;->change_profile_picture:I

    new-instance v3, Lcom/instagram/android/fragment/gh;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/gh;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lcom/instagram/ui/menu/f;

    sget v1, Lcom/facebook/az;->log_out:I

    new-instance v3, Lcom/instagram/android/fragment/gi;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/gi;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-static {}, Lcom/instagram/common/s/b;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 250
    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->developer:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v0, Lcom/instagram/ui/menu/f;

    sget v1, Lcom/facebook/az;->options:I

    new-instance v3, Lcom/instagram/android/fragment/gj;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/gj;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_4
    return-object v2
.end method

.method private W()V
    .locals 4

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://help.instagram.com/"

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fy;->l()Landroid/support/v4/app/k;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/fy;->a(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method private X()V
    .locals 4

    .prologue
    .line 288
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fy;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->report_problem:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    sget v3, Lcom/facebook/az;->abuse_or_spam:I

    invoke-virtual {p0, v3}, Lcom/instagram/android/fragment/fy;->c(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/facebook/az;->send_feedback:I

    invoke-virtual {p0, v3}, Lcom/instagram/android/fragment/fy;->c(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/facebook/az;->report_problem:I

    invoke-virtual {p0, v3}, Lcom/instagram/android/fragment/fy;->c(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/instagram/android/fragment/gl;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/gl;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 315
    return-void
.end method

.method private Y()V
    .locals 3

    .prologue
    .line 318
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fy;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->are_you_sure:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->yes_im_sure:I

    new-instance v2, Lcom/instagram/android/fragment/gm;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/gm;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 330
    return-void
.end method

.method private Z()V
    .locals 3

    .prologue
    .line 333
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fy;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->are_you_sure:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->log_out:I

    new-instance v2, Lcom/instagram/android/fragment/gn;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/gn;-><init>(Lcom/instagram/android/fragment/fy;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 344
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/fy;)Lcom/instagram/o/b/a;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/fragment/fy;->ab:Lcom/instagram/o/b/a;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/fy;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/fy;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/fy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/fy;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 271
    invoke-virtual {p0, p2}, Lcom/instagram/android/fragment/fy;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/fragment/fy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fy;->n()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/instagram/simplewebview/SimpleWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/fragment/fy;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/instagram/android/fragment/fy;->W()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/fragment/fy;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/instagram/android/fragment/fy;->X()V

    return-void
.end method

.method static synthetic d()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/instagram/android/fragment/fy;->i:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/fragment/fy;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/instagram/android/fragment/fy;->Y()V

    return-void
.end method

.method static synthetic e(Lcom/instagram/android/fragment/fy;)Lcom/instagram/android/d/n;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/fragment/fy;->aa:Lcom/instagram/android/d/n;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/fragment/fy;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/instagram/android/fragment/fy;->Z()V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/instagram/ui/menu/e;->F()V

    .line 69
    invoke-direct {p0}, Lcom/instagram/android/fragment/fy;->V()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/fy;->a(Ljava/util/Collection;)V

    .line 70
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 348
    invoke-super {p0}, Lcom/instagram/ui/menu/e;->G()V

    .line 350
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fy;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const-string v1, "ProgressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/dialog/g;

    .line 352
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/instagram/ui/dialog/g;->b()V

    .line 355
    :cond_0
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/fragment/fy;->aa:Lcom/instagram/android/d/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/android/d/n;->a(IILandroid/content/Intent;)V

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/ui/menu/e;->a(IILandroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/instagram/ui/menu/e;->a(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Lcom/instagram/android/d/n;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/d/n;-><init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fy;->aa:Lcom/instagram/android/d/n;

    .line 61
    invoke-static {}, Lcom/instagram/o/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/instagram/o/b/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/fy;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/o/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/fy;->ab:Lcom/instagram/o/b/a;

    .line 64
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    sget v0, Lcom/facebook/az;->options:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 52
    invoke-virtual {p0}, Lcom/instagram/android/fragment/fy;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/instagram/ui/menu/e;->e(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/instagram/android/fragment/fy;->aa:Lcom/instagram/android/d/n;

    invoke-virtual {v0, p1}, Lcom/instagram/android/d/n;->a(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    const-string v0, "user_options"

    return-object v0
.end method
