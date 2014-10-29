.class final Lcom/instagram/cliffjumper/edit/photo/a/aa;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Lcom/instagram/cliffjumper/edit/photo/render/g;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1145
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/aa;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1152
    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/aa;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1145
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/cliffjumper/edit/photo/render/a;)V
    .locals 5
    .parameter

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1159
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/photo/render/a;->c()Lcom/instagram/cliffjumper/edit/photo/render/b;

    move-result-object v0

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/render/b;->a:Lcom/instagram/cliffjumper/edit/photo/render/b;

    if-ne v0, v1, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    .line 1161
    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/ab;

    invoke-direct {v1, p0, p1, v0}, Lcom/instagram/cliffjumper/edit/photo/a/ab;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/aa;Lcom/instagram/cliffjumper/edit/photo/render/a;Lcom/instagram/creation/b/a/e;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1231
    :cond_1
    const-string v0, "Render Failure"

    const-string v1, "Render Failure"

    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/photo/render/a;->d()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1232
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/a/a;->V()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Render Failure: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/photo/render/a;->c()Lcom/instagram/cliffjumper/edit/photo/render/b;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c()V

    .line 1236
    sget v0, Lcom/facebook/az;->unable_to_save_upload_image:I

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a(I)V

    goto :goto_0
.end method
