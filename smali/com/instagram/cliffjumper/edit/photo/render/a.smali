.class public final Lcom/instagram/cliffjumper/edit/photo/render/a;
.super Ljava/lang/Object;
.source "BatchRenderResult.java"


# instance fields
.field private a:Lcom/instagram/cliffjumper/edit/photo/render/b;

.field private b:Ljava/lang/Exception;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/render/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/render/b;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->c:Ljava/util/List;

    .line 21
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->a:Lcom/instagram/cliffjumper/edit/photo/render/b;

    .line 22
    return-void
.end method

.method public static a()Lcom/instagram/cliffjumper/edit/photo/render/a;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/render/a;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/render/b;->e:Lcom/instagram/cliffjumper/edit/photo/render/b;

    invoke-direct {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/render/a;-><init>(Lcom/instagram/cliffjumper/edit/photo/render/b;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;)Lcom/instagram/cliffjumper/edit/photo/render/a;
    .locals 2
    .parameter

    .prologue
    .line 33
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/render/a;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/render/b;->d:Lcom/instagram/cliffjumper/edit/photo/render/b;

    invoke-direct {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/render/a;-><init>(Lcom/instagram/cliffjumper/edit/photo/render/b;)V

    .line 34
    iput-object p0, v0, Lcom/instagram/cliffjumper/edit/photo/render/a;->b:Ljava/lang/Exception;

    .line 35
    return-object v0
.end method

.method public static b()Lcom/instagram/cliffjumper/edit/photo/render/a;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/render/a;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/render/b;->c:Lcom/instagram/cliffjumper/edit/photo/render/b;

    invoke-direct {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/render/a;-><init>(Lcom/instagram/cliffjumper/edit/photo/render/b;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/cliffjumper/edit/photo/render/b;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->a:Lcom/instagram/cliffjumper/edit/photo/render/b;

    .line 48
    return-void
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/photo/render/j;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public final c()Lcom/instagram/cliffjumper/edit/photo/render/b;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->a:Lcom/instagram/cliffjumper/edit/photo/render/b;

    return-object v0
.end method

.method public final d()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/render/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->c:Ljava/util/List;

    return-object v0
.end method
