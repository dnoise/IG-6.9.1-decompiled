.class public final Lcom/instagram/cliffjumper/edit/common/effectfilter/c;
.super Lcom/instagram/cliffjumper/edit/common/ui/c;
.source "CjFilterInfo.java"


# instance fields
.field private a:Lcom/instagram/cliffjumper/edit/common/ui/a;

.field private b:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

.field private c:Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/instagram/cliffjumper/edit/common/ui/a;Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/common/ui/c;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p4, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    .line 24
    iput-object p5, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c:Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;

    .line 25
    iput-object p3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->a:Lcom/instagram/cliffjumper/edit/common/ui/a;

    .line 26
    return-void
.end method

.method public static c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    return-object v0
.end method

.method public final b()Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c:Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;

    return-object v0
.end method

.method public final d()Lcom/instagram/cliffjumper/edit/common/ui/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->a:Lcom/instagram/cliffjumper/edit/common/ui/a;

    return-object v0
.end method
