.class final Lcom/instagram/common/aa/b;
.super Ljava/lang/Object;
.source "Waterfall.java"

# interfaces
.implements Lcom/instagram/common/analytics/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instagram/common/aa/a;


# direct methods
.method constructor <init>(Lcom/instagram/common/aa/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/common/aa/b;->b:Lcom/instagram/common/aa/a;

    iput-object p2, p0, Lcom/instagram/common/aa/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/common/aa/b;->a:Ljava/lang/String;

    return-object v0
.end method
