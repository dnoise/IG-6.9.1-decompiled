.class final Lcom/instagram/android/fragment/m;
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
    .line 46
    iput-object p1, p0, Lcom/instagram/android/fragment/m;->a:Lcom/instagram/android/fragment/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 49
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/l/a/b;->d(Z)Z

    .line 50
    if-eqz p2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/instagram/android/fragment/m;->a:Lcom/instagram/android/fragment/k;

    sget v1, Lcom/facebook/az;->advanced_resize_warning:I

    invoke-static {v0, v1, p1}, Lcom/instagram/android/fragment/k;->a(Lcom/instagram/android/fragment/k;ILandroid/widget/CompoundButton;)V

    .line 53
    :cond_0
    return-void
.end method
