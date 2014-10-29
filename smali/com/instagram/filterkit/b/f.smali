.class public final Lcom/instagram/filterkit/b/f;
.super Lcom/instagram/filterkit/b/e;
.source "IgGLUniform.java"


# instance fields
.field private a:Ljava/nio/IntBuffer;

.field private b:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/filterkit/b/e;-><init>(Ljava/lang/String;III)V

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/FloatBuffer;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/instagram/filterkit/b/f;->b:Ljava/nio/FloatBuffer;

    .line 24
    return-void
.end method

.method public final a(Ljava/nio/IntBuffer;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/instagram/filterkit/b/f;->a:Ljava/nio/IntBuffer;

    .line 20
    return-void
.end method

.method public final c()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/filterkit/b/f;->a:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public final d()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/filterkit/b/f;->b:Ljava/nio/FloatBuffer;

    return-object v0
.end method
