.class final Lcom/instagram/android/directshare/c/q;
.super Ljava/lang/Object;
.source "InboxRowViewBinder.java"

# interfaces
.implements Lcom/instagram/common/ui/widget/imageview/f;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/s;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/s;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/instagram/android/directshare/c/q;->a:Lcom/instagram/android/directshare/c/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/instagram/android/directshare/c/q;->a:Lcom/instagram/android/directshare/c/s;

    iget-object v1, v0, Lcom/instagram/android/directshare/c/s;->h:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/instagram/android/directshare/c/q;->a:Lcom/instagram/android/directshare/c/s;

    iget-object v0, v0, Lcom/instagram/android/directshare/c/s;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnLoadListener(Lcom/instagram/common/ui/widget/imageview/f;)V

    .line 75
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
