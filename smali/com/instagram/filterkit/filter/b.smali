.class final Lcom/instagram/filterkit/filter/b;
.super Ljava/lang/Object;
.source "IgFilterGroup.java"


# instance fields
.field final a:Lcom/instagram/filterkit/filter/IgFilter;

.field b:Z

.field final synthetic c:Lcom/instagram/filterkit/filter/IgFilterGroup;


# direct methods
.method public constructor <init>(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/filterkit/filter/IgFilter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/instagram/filterkit/filter/b;->c:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p2, p0, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/filterkit/filter/b;->b:Z

    .line 313
    return-void
.end method
