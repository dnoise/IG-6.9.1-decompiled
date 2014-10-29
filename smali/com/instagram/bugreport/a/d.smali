.class public Lcom/instagram/bugreport/a/d;
.super Ljava/lang/Object;
.source "FlytrapRequestBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/instagram/bugreport/a/d;->a:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/bugreport/a/b;
    .locals 8

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/bugreport/a/d;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/instagram/bugreport/a/a;

    iget-object v1, p0, Lcom/instagram/bugreport/a/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/bugreport/a/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/bugreport/a/d;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/instagram/bugreport/a/d;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/instagram/bugreport/a/d;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/instagram/bugreport/a/d;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/instagram/bugreport/a/d;->i:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/instagram/bugreport/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/instagram/bugreport/a/h;

    iget-object v1, p0, Lcom/instagram/bugreport/a/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/bugreport/a/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/bugreport/a/d;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/instagram/bugreport/a/d;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/instagram/bugreport/a/d;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/instagram/bugreport/a/d;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/instagram/bugreport/a/d;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/instagram/bugreport/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/instagram/bugreport/a/d;->b:Ljava/lang/String;

    .line 27
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/instagram/bugreport/a/d;->c:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method final c(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/instagram/bugreport/a/d;->d:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method final d(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/instagram/bugreport/a/d;->e:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method final e(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/bugreport/a/d;->h:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method final f(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/instagram/bugreport/a/d;->f:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method final g(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/instagram/bugreport/a/d;->g:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method final h(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/instagram/bugreport/a/d;->i:Ljava/lang/String;

    .line 62
    return-object p0
.end method
