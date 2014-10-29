.class final Lcom/instagram/android/maps/c/j;
.super Lcom/instagram/api/j/a;
.source "PhotoMapsEditHelper.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 4
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->b(Lcom/instagram/android/maps/c/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 136
    iget-object v0, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->b(Lcom/instagram/android/maps/c/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    .line 141
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/android/g/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->U()V

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->i()V

    .line 148
    const-string v0, "com.instagram.android.maps.manager.MapReviewed"

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    .line 150
    iget-object v0, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0, v3}, Lcom/instagram/android/maps/c/c;->a(Lcom/instagram/android/maps/c/c;Z)V

    .line 152
    iget-object v0, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->c(Lcom/instagram/android/maps/c/c;)I

    move-result v0

    sget v1, Lcom/instagram/android/maps/e/f;->b:I

    if-ne v0, v1, :cond_2

    .line 153
    iget-object v0, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->d(Lcom/instagram/android/maps/c/c;)Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->your_map_is_now_ready:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    :goto_1
    return-void

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->d(Lcom/instagram/android/maps/c/c;)Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->changes_saved:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
