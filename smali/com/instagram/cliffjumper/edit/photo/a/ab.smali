.class final Lcom/instagram/cliffjumper/edit/photo/a/ab;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/render/a;

.field final synthetic b:Lcom/instagram/creation/b/a/e;

.field final synthetic c:Lcom/instagram/cliffjumper/edit/photo/a/aa;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/aa;Lcom/instagram/cliffjumper/edit/photo/render/a;Lcom/instagram/creation/b/a/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/render/a;

    iput-object p3, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->b:Lcom/instagram/creation/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c()V

    .line 1171
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/render/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/render/i;->b(Lcom/instagram/cliffjumper/edit/photo/render/a;)Lcom/instagram/cliffjumper/edit/photo/render/j;

    move-result-object v0

    .line 1176
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/render/j;->d()I

    move-result v0

    sget v1, Lcom/instagram/cliffjumper/edit/photo/render/k;->a:I

    if-eq v0, v1, :cond_2

    .line 1178
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    sget v1, Lcom/facebook/az;->unable_to_save_full_image:I

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a(Lcom/instagram/cliffjumper/edit/photo/a/aa;I)V

    .line 1181
    :cond_2
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/render/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/render/i;->a(Lcom/instagram/cliffjumper/edit/photo/render/a;)Lcom/instagram/cliffjumper/edit/photo/render/j;

    move-result-object v2

    .line 1182
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/render/j;->d()I

    move-result v0

    sget v1, Lcom/instagram/cliffjumper/edit/photo/render/k;->a:I

    if-eq v0, v1, :cond_4

    .line 1184
    :cond_3
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    sget v1, Lcom/facebook/az;->unable_to_save_upload_image:I

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a(Lcom/instagram/cliffjumper/edit/photo/a/aa;I)V

    goto :goto_0

    .line 1188
    :cond_4
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pendingMediaKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1190
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->b:Lcom/instagram/creation/b/a/e;

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->b(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    .line 1191
    if-nez v0, :cond_6

    .line 1192
    invoke-static {v1}, Lcom/instagram/creation/b/a/b;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    .line 1193
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/b/a;

    invoke-interface {v0, v1}, Lcom/instagram/creation/photo/b/a;->a(Lcom/instagram/creation/b/a/b;)V

    .line 1195
    :goto_1
    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/render/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->e(Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "mediaSource"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->a(I)V

    .line 1197
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "originalWidth"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->d(I)V

    .line 1198
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "originalHeight"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->e(I)V

    .line 1199
    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/render/j;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->c(Ljava/lang/String;)V

    .line 1200
    sget-object v0, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    .line 1202
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->w(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/b/a/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/i;)V

    .line 1204
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->b:Lcom/instagram/creation/b/a/e;

    invoke-interface {v0}, Lcom/instagram/creation/b/a/e;->h()V

    .line 1211
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/b/a;

    invoke-interface {v0, v1}, Lcom/instagram/creation/photo/b/a;->b(Lcom/instagram/creation/b/a/b;)V

    .line 1213
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1215
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "latitude"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "longitude"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1217
    const-string v0, "latitude"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v3, v3, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "latitude"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1218
    const-string v0, "longitude"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v3, v3, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "longitude"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1221
    :cond_5
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "directShare"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1223
    sget-object v0, Lcom/instagram/p/a;->d:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v4, "filter_id"

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v5, v5, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v5}, Lcom/instagram/cliffjumper/edit/photo/a/a;->d()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 1226
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->c:Lcom/instagram/cliffjumper/edit/photo/a/aa;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/base/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v2}, Lcom/instagram/creation/base/a;->a(Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    move-object v1, v0

    goto/16 :goto_1
.end method
