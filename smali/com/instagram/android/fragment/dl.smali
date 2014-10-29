.class final Lcom/instagram/android/fragment/dl;
.super Ljava/lang/Object;
.source "PreloadOptionsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/l/b/a;

.field final synthetic b:Lcom/instagram/android/fragment/dh;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/dh;Lcom/instagram/l/b/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/instagram/android/fragment/dl;->b:Lcom/instagram/android/fragment/dh;

    iput-object p2, p0, Lcom/instagram/android/fragment/dl;->a:Lcom/instagram/l/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter "isChecked"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/fragment/dl;->a:Lcom/instagram/l/b/a;

    invoke-virtual {v0, p2}, Lcom/instagram/l/b/a;->f(Z)Z

    .line 73
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "instagram_setting_save_captured_videos_clicked"

    iget-object v2, p0, Lcom/instagram/android/fragment/dl;->b:Lcom/instagram/android/fragment/dh;

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "enabled"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 78
    return-void
.end method
