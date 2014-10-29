.class final Lcom/instagram/android/maps/ui/o;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Lcom/instagram/common/ui/b/a;


# instance fields
.field final synthetic a:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

.field final synthetic b:Lcom/instagram/android/g/b;

.field final synthetic c:Lcom/instagram/android/maps/ui/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;Lcom/instagram/android/g/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/instagram/android/maps/ui/o;->c:Lcom/instagram/android/maps/ui/m;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/o;->a:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    iput-object p3, p0, Lcom/instagram/android/maps/ui/o;->b:Lcom/instagram/android/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lcom/instagram/android/maps/ui/o;->a:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/o;->b:Lcom/instagram/android/g/b;

    invoke-virtual {v1, p1}, Lcom/instagram/android/g/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setUrl(Ljava/lang/String;)V

    .line 397
    return-void
.end method
