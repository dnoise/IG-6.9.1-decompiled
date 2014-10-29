.class final Lcom/instagram/cliffjumper/edit/photo/a/ac;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1315
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/ac;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1340
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->b:Z

    if-eqz v0, :cond_0

    .line 1341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->b:Z

    .line 1342
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/filter/IgFilter;)V

    .line 1343
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    .line 1345
    :cond_0
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1321
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v1

    iget-boolean v1, v1, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-nez v1, :cond_1

    .line 1322
    const/4 v0, 0x0

    .line 1336
    :cond_0
    :goto_0
    return v0

    .line 1324
    :cond_1
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1325
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 1326
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->x(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/filter/IgFilter;)V

    .line 1327
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v1

    .line 1328
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->x(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V

    .line 1329
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->x(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V

    .line 1330
    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->b:Z

    .line 1331
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    goto :goto_0

    .line 1332
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1333
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a()V

    goto :goto_0
.end method
