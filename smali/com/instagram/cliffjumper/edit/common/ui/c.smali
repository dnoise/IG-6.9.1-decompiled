.class public abstract Lcom/instagram/cliffjumper/edit/common/ui/c;
.super Ljava/lang/Object;
.source "EffectInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/c;->a:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/instagram/cliffjumper/edit/common/ui/c;->b:I

    .line 13
    return-void
.end method


# virtual methods
.method public abstract d()Lcom/instagram/cliffjumper/edit/common/ui/a;
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/c;->b:I

    return v0
.end method
