.class public final Lcom/fasterxml/jackson/a/g/f;
.super Lcom/fasterxml/jackson/a/g/i;
.source "DefaultPrettyPrinter.java"


# static fields
.field public static final a:Lcom/fasterxml/jackson/a/g/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/fasterxml/jackson/a/g/f;

    invoke-direct {v0}, Lcom/fasterxml/jackson/a/g/f;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/a/g/f;->a:Lcom/fasterxml/jackson/a/g/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/g/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/a/h;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 340
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V

    .line 341
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    return v0
.end method
