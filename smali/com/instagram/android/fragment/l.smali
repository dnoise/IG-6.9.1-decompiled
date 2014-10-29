.class final Lcom/instagram/android/fragment/l;
.super Ljava/lang/Object;
.source "CameraSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/k;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/k;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/instagram/android/fragment/l;->a:Lcom/instagram/android/fragment/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 36
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/l/a/b;->b(Z)Z

    .line 37
    if-eqz p2, :cond_0

    .line 38
    iget-object v0, p0, Lcom/instagram/android/fragment/l;->a:Lcom/instagram/android/fragment/k;

    sget v1, Lcom/facebook/az;->instagram_camera_warning:I

    invoke-static {v0, v1, p1}, Lcom/instagram/android/fragment/k;->a(Lcom/instagram/android/fragment/k;ILandroid/widget/CompoundButton;)V

    .line 40
    :cond_0
    return-void
.end method
