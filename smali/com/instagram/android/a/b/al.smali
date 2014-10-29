.class final Lcom/instagram/android/a/b/al;
.super Ljava/lang/Object;
.source "ReviewPhotoMapTypeRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/a/r;

.field final synthetic b:Lcom/instagram/android/a/b/am;


# direct methods
.method constructor <init>(Lcom/instagram/android/a/r;Lcom/instagram/android/a/b/am;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/instagram/android/a/b/al;->a:Lcom/instagram/android/a/r;

    iput-object p2, p0, Lcom/instagram/android/a/b/al;->b:Lcom/instagram/android/a/b/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/a/b/al;->a:Lcom/instagram/android/a/r;

    iget-object v1, v1, Lcom/instagram/android/a/r;->a:Lcom/instagram/android/maps/b/f;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/a/b/al;->b:Lcom/instagram/android/a/b/am;

    iget-object v2, v1, Lcom/instagram/android/a/b/am;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v1, 0x80

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 59
    if-eqz v0, :cond_2

    .line 60
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/a/b/al;->a:Lcom/instagram/android/a/r;

    iget-object v1, v1, Lcom/instagram/android/a/r;->a:Lcom/instagram/android/maps/b/f;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Ljava/util/Collection;)V

    .line 64
    :goto_2
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    const/16 v1, 0xff

    goto :goto_1

    .line 62
    :cond_2
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/a/b/al;->a:Lcom/instagram/android/a/r;

    iget-object v1, v1, Lcom/instagram/android/a/r;->a:Lcom/instagram/android/maps/b/f;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Ljava/util/Collection;)V

    goto :goto_2
.end method
