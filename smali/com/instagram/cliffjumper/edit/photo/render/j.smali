.class public final Lcom/instagram/cliffjumper/edit/photo/render/j;
.super Ljava/lang/Object;
.source "RenderResult.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/render/j;->a:I

    .line 16
    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/render/j;->b:Ljava/lang/String;

    .line 17
    iput-wide p3, p0, Lcom/instagram/cliffjumper/edit/photo/render/j;->c:J

    .line 18
    iput p5, p0, Lcom/instagram/cliffjumper/edit/photo/render/j;->d:I

    .line 19
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/j;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/j;->c:J

    return-wide v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/j;->d:I

    return v0
.end method
