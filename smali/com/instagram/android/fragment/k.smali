.class public final Lcom/instagram/android/fragment/k;
.super Lcom/instagram/ui/menu/e;
.source "CameraSettingsFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/instagram/ui/menu/e;-><init>()V

    return-void
.end method

.method private a(ILandroid/widget/CompoundButton;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/k;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    new-instance v2, Lcom/instagram/android/fragment/n;

    invoke-direct {v2, p0, p2}, Lcom/instagram/android/fragment/n;-><init>(Lcom/instagram/android/fragment/k;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/k;ILandroid/widget/CompoundButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/k;->a(ILandroid/widget/CompoundButton;)V

    return-void
.end method

.method private d()Ljava/util/List;
    .locals 5
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
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v1, Lcom/instagram/ui/menu/aa;

    sget v2, Lcom/facebook/az;->instagram_camera:I

    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/l/a/b;->f()Z

    move-result v3

    new-instance v4, Lcom/instagram/android/fragment/l;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/l;-><init>(Lcom/instagram/android/fragment/k;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/ui/menu/aa;-><init>(IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/instagram/ui/menu/aa;

    sget v2, Lcom/facebook/az;->advanced_resize:I

    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/l/a/b;->g()Z

    move-result v3

    new-instance v4, Lcom/instagram/android/fragment/m;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/m;-><init>(Lcom/instagram/android/fragment/k;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/ui/menu/aa;-><init>(IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/instagram/ui/menu/e;->F()V

    .line 24
    invoke-direct {p0}, Lcom/instagram/android/fragment/k;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/k;->a(Ljava/util/Collection;)V

    .line 25
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    sget v0, Lcom/facebook/az;->advanced_features:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 74
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 75
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "camera_settings"

    return-object v0
.end method
